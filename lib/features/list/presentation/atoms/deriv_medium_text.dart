import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';

class DerivMediumText extends StatelessWidget {
  final String text;
  const DerivMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: FoundationStyle.mediumTextStyle,
    );
  }
}
