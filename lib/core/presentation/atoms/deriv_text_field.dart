import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';

class DerivTextField extends StatelessWidget {
  
  final Function(String)? onChanged;

  const DerivTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: FoundationStyle.appBarHintTitle,
        border: InputBorder.none,
      ),
      style: FoundationStyle.appBarTextStyle,
      cursorColor: FoundationColors.textPrimary,
      onChanged: onChanged,
    );
  }
}
