import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/list/presentation/atoms/deriv_small_text.dart';
import 'package:flutter/material.dart';

class DerivSlidableListItem extends StatelessWidget {
  final String text;
  const DerivSlidableListItem(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 50,
                  color: FoundationColors.cardBackground,
                  child: Center(
                    child: DerivSmallText(text),
                  ),
                );
  }
}