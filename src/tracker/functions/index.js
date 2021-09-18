const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();
const db = admin.firestore();
const fcm = admin.messaging();

const DAYS_TO_DELETE = 14 * 24 * 60 * 60 * 1000; // 14 days in milliseconds


exports.removeOldPlaces = functions.firestore.document('/infected/{wildcard}')
    .onCreate(async (change, context) => {
        var now = Date.now();
        var cutoff = now - DAYS_TO_DELETE;
        const docs = db.collection('infected');
        const snapshot = await docs.get();

        snapshot.forEach(doc => {
            var docData = doc.data();
            try {
                if (docData['departure'] < cutoff) {
                    var reference = db.doc('infected/' + doc.id);
                    reference.delete()
                        .then(function () {
                            console.log("Remove succeeded.");
                        })
                        .catch(function (error) {
                            console.log("Remove failed: " + error.message);
                        });
                }
            } catch (error) {
                console.log("The error " + error + " was raised when trying to delete old places");
            }
        });
        await notifyUsers(cutoff);
    });

async function notifyUsers(cutoff) {
    const docs = db.collection('users');
    const usersSnapshot = (await docs.get()).docs;
    const infected = db.collection("infected");
    const infectedPlacesSnapshot = (await infected.get()).docs;

    const deviceTokens = usersSnapshot.map(async (user) => {
        const lastNotified = (await db.collection('users')
            .doc(user.id)
            .get())
            .data()
            .lastNotified;

        if (lastNotified > cutoff) {
            console.log("Usuario " + user.id + " foi notificado recentemente, não há necessidade de notificar de novo")
            return
        }
        console.log("Usuario " + user.id + " não foi notificado recentemente, precisamos checar se ele precisara ser notificado")

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
                title: "Atenção! Você pode ter tido contato com uma doença infecciosa",
                body: "Uma pessoa infectada frequentou o mesmo lugar que você, evite encontrar outras pessoas!",
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
