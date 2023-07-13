import 'package:flutter/material.dart';

import '../molecules/deriv_slidable_list_item.dart';

class DerivSliverList extends StatelessWidget {
  final List<String> items;
  const DerivSliverList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return DerivSlidableListItem(items[index]);
              },
              childCount: items.length,
            ),
          );
  }
}