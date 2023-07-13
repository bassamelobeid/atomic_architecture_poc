import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/list/presentation/atoms/deriv_large_text.dart';
import 'package:atomic_architecture_poc/features/list/presentation/atoms/deriv_medium_text.dart';
import 'package:atomic_architecture_poc/features/list/presentation/molecules/deriv_colored_container.dart';
import 'package:atomic_architecture_poc/features/list/presentation/organisms/deriv_sliver_to_box_adapter_ontainer.dart';
import 'package:atomic_architecture_poc/features/list/presentation/templates/searchable_list_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    "Google",
    "Facebook",
    "Instagram",
    "Twitter",
    "LinkedIn",
    "Snapchat",
    "TikTok",
    "Pinterest",
    "Reddit",
    "Tumblr",
    "Flickr",
    "Quora",
    "Vimeo",
    "Vine",
    "Periscope",
  ];
  String search = "";

  @override
  Widget build(BuildContext context) {
    List<String> filteredItems = items
        .where((element) => element.toLowerCase().contains(search))
        .toList();

    return SearchableListTemplate(
        onSearchValueChanged: (value) {
          setState(() {
            search = value;
          });
        },
        items: filteredItems,
        extraItems: const [
          DerivSliverToBoxAdapterContainer(
            child: DerivColoredContainer(
              color: FoundationColors.accent,
              child: DerivLargeText('Accent Container'),
            ),
          ),
          DerivSliverToBoxAdapterContainer(
            child: DerivColoredContainer(
              color: FoundationColors.cardBackground,
              child: DerivMediumText('Accent Secondary Container'),
            ),
          )
        ],
        );
  }
}
