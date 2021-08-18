import 'package:flutter/material.dart';

class CustomColor extends Color {
  final int hexadecimal;

  const CustomColor._(this.hexadecimal) : super(hexadecimal);

  static const CustomColor background = CustomColor._(0xFFF6F5F5);
  static const CustomColor navigationBackground = CustomColor._(0xFFF8F8F8);
  static const CustomColor button = CustomColor._(0xFF0BCE83);
  static const CustomColor main = CustomColor._(0xFF7203FF);
  static const CustomColor mainBorder = CustomColor._(0xFFB179F6);
  static const CustomColor mainText = CustomColor._(0xFF2D0C57);
  static const CustomColor secondaryText = CustomColor._(0xFF9586A8);
  static const CustomColor cardBorder = CustomColor._(0xFFD9D0E3);
}
