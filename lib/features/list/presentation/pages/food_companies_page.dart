import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_large_text.dart';
import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_medium_text.dart';
import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/list/presentation/molecules/deriv_colored_container.dart';
import 'package:atomic_architecture_poc/features/list/presentation/organisms/deriv_sliver_to_box_adapter_ontainer.dart';
import 'package:atomic_architecture_poc/features/list/presentation/templates/searchable_list_template.dart';
import 'package:flutter/material.dart';

class FoodCompaniesPage extends StatefulWidget {
  const FoodCompaniesPage({super.key});

  @override
  State<FoodCompaniesPage> createState() => _FoodCompaniesPageState();
}

class _FoodCompaniesPageState extends State<FoodCompaniesPage> {
  List<String> items = [
    "Nestle",
    "PepsiCo",
    "Coca-Cola",
    "Unilever",
    "Mars",
    "Mondelez",
    "Danone",
    "General Mills",
    "Kellogg's",
    "Associated British Foods",
    "The Hershey Company",
    "Ferrero",
    "McCormick & Company",
    "Grupo Bimbo",
    "Smithfield Foods",
    "Tyson Foods",
    "JBS",
    "Cargill",
    "Kraft Heinz",
  ];

  

  @override
  Widget build(BuildContext context) {
    return SearchableListTemplate(
        items: items,
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