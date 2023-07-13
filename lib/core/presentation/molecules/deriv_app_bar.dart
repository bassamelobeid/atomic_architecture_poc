import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_medium_text.dart';
import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_text_field.dart';
import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';

class DerivAppBar extends StatelessWidget {
  final Function(String)? onChanged;
  const DerivAppBar({super.key, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: FoundationColors.appBarBackground,
            title: onChanged == null ? 
            const DerivMediumText('Deriv')
             : DerivTextField(
              onChanged: onChanged,
            ),
          );
  }
}