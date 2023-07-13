import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/list/presentation/atoms/deriv_text_field.dart';
import 'package:flutter/material.dart';

class DerivAppBar extends StatelessWidget {

  final Function(String) onChanged;

  const DerivAppBar({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: FoundationColors.appBarBackground,
            title: DerivTextField(
              onChanged: onChanged,
            ),
          );
  }
}