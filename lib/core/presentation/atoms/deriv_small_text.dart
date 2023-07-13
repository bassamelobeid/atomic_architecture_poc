import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';

class DerivSmallText extends StatelessWidget {
  final String text;
  const DerivSmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: FoundationStyle.smallTextStyle,
    );
  }
}
