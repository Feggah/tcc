const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();
const db = admin.firestore();
const fcm = admin.messaging();

const DAYS_TO_DELETE = 14 * 24 * 60 * 60 * 1000; // 14 days in milliseconds

exports.removeUserOldPlaces = functions.firestore.document('users/{userId}/locations/{location}')
    .onCreate(async (change, context) => {
        const snapshot = await db.collection('users')
            .doc(context.params.userId)
            .collection('locations')
            .get();

        const path = "users/" + context.params.userId + "/locations/";

        deleteOldPlaces(snapshot, path);
    });


exports.removeInfectedOldPlaces = functions.firestore.document('/infected/{wildcard}')
    .onCreate(async (change, context) => {
        const docs = db.collection('infected');
        const snapshot = await docs.get();

        deleteOldPlaces(snapshot, "infected/");
        await notifyUsers();
    });

async function notifyUsers() {
    const docs = db.collection('users');
    const usersSnapshot = (await docs.get()).docs;
    const infected = db.collection("infected");
    const infectedPlacesSnapshot = (await infected.get()).docs;
    var now = Date.now();
    var cutoff = now - DAYS_TO_DELETE;

    const deviceTokens = usersSnapshot.map(async (user) => {
        const lastNotified = (await db.collection('users')
            .doc(user.id)
            .get())
            .data()
            .lastNotified;

        if (lastNotified > cutoff) {
            return
        }

        const visitedPlaces = (await db.collection('users')
            .doc(user.id)
            .collection('locations')
            .get())
            .docs
            .map((place) => place.data());

        const infectedVisitedPlaces = infectedPlacesSnapshot
            .map((it) => it.data())
            .filter((it) => it.departure > cutoff);

        const hasToBeNotified = visitedPlaces
            .some((place) => infectedVisitedPlaces
                .some((infectedPlace) => (
                    place.latitude == infectedPlace.latitude
                    && place.longitude == infectedPlace.longitude
                    && place.arrival < infectedPlace.departure
                    && infectedPlace.arrival < place.departure
                )));

        const deviceToken = (await db.collection('users')
            .doc(user.id)
            .get())
            .data()
            .fcmToken;

        if (hasToBeNotified) {
            return deviceToken;
        }
    });

    webpush = {
        notification: {
            notification: {
                title: "Alerta de exposição",
                body: "Uma pessoa infectada por uma doença infecciosa frequentou o mesmo lugar que você! Evite encontrar outras pessoas.",
            },
            data: {
                click_action: 'FLUTTER_NOTIFICATION_CLICK'
            }
        },
    }

    Promise.all(deviceTokens)
        .then(values => {
            if (values.length > 0) {
                const tokens = new Set(values);
                tokens.forEach(token => {
                    if (typeof (token) != 'undefined') {
                        fcm.sendToDevice(token, webpush.notification)
                            .then(
                                console.log("Notification sent successfully, it was sent to device: " + token)
                            )
                            .catch(err => {
                                console.log("An error has occured: " + err);
                            });
                    }
                })
            }
        });
}

function deleteOldPlaces(snapshot, path) {
    var now = Date.now();
    var cutoff = now - DAYS_TO_DELETE;
    snapshot.forEach(doc => {
        var docData = doc.data();
        try {
            if (docData['departure'] < cutoff) {
                var reference = db.doc(path + doc.id);
                reference.delete()
                    .then(function () {
                        console.log("Remove with " + docData["latitude"] + " successful.");
                    })
                    .catch(function (error) {
                        console.log("Remove failed: " + error.message);
                    });
            }
        } catch (error) {
            console.log("The error " + error + " was raised when trying to delete old places");
        }
    });
}
