import 'package:flutter/material.dart';

import 'package:atomic_architecture_poc/features/list/presentation/molecules/deriv_app_bar.dart';
import 'package:atomic_architecture_poc/features/list/presentation/organisms/deriv_sliver_list.dart';

class SearchableListTemplate extends StatelessWidget {
  final Function(String) onSearchValueChanged;
  final List<String> items;
  final List<Widget> extraItems;
  const SearchableListTemplate({super.key, required this.onSearchValueChanged, required this.items, this.extraItems = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DerivAppBar(
            onChanged: onSearchValueChanged,
          ),
          DerivSliverList(items: items),
          ...extraItems
        ],
      ),
    );
  }
}