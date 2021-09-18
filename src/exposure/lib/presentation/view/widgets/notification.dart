import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

OverlaySupportEntry appNotification(
    {required String title, required String body, required bool error}) {
  return showSimpleNotification(
    Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    ),
    subtitle: Text(
      body,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
    ),
    background: error ? Colors.red : CustomColor.button,
    autoDismiss: !error,
    slideDismissDirection: DismissDirection.up,
    duration: const Duration(seconds: 5),
    contentPadding: const EdgeInsets.all(8),
  );
}
