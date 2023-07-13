import 'package:flutter/material.dart';

class DerivSliverToBoxAdapterContainer extends StatelessWidget {
  final Widget child;

  const DerivSliverToBoxAdapterContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: child);
  }
}