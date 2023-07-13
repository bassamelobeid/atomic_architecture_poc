import 'package:flutter/material.dart';

class DerivColoredContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const DerivColoredContainer({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: color,
      child: Center(child: child),
    );
  }
}