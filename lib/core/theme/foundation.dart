// colors.dart

import 'package:atomic_architecture_poc/core/theme/tokens.dart';
import 'package:flutter/material.dart';

class FoundationColors {
  static const Color appBarBackground = MyColors.spaceCadet; // Use the desired color
  static const Color cardBackground = MyColors.viridian; // Use the desired color
  static const Color textPrimary = MyColors.desertSand; // Use the desired color
  static const Color accent = MyColors.bloodRed; // Use the desired color
}

class FoundationStyle{
  static const TextStyle appBarTextStyle = TextStyle(
    color: FoundationColors.textPrimary,
  );
  static TextStyle appBarHintTitle = TextStyle(
    color: FoundationColors.textPrimary.withOpacity(0.6),
  );
  static const TextStyle smallTextStyle = TextStyle(
    color: FoundationColors.textPrimary,
  );
  static const TextStyle mediumTextStyle = TextStyle(
        color: FoundationColors.textPrimary,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      );

  static const TextStyle largeTextStyle = TextStyle(
    color: FoundationColors.textPrimary,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
}