import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_large_text.dart';
import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/core/presentation/molecules/deriv_app_bar.dart';
import 'package:atomic_architecture_poc/features/list/presentation/molecules/deriv_colored_container.dart';
import 'package:atomic_architecture_poc/features/list/presentation/organisms/deriv_sliver_to_box_adapter_ontainer.dart';
import 'package:atomic_architecture_poc/features/list/presentation/pages/food_companies_page.dart';
import 'package:atomic_architecture_poc/features/list/presentation/pages/social_media_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DerivAppBar(),
          DerivSliverToBoxAdapterContainer(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const SocialMediaPage()));
              },
              child: const DerivColoredContainer(
                color: FoundationColors.cardBackground,
                child: DerivLargeText('Social Media'),
              ),
            ),
          ),
          DerivSliverToBoxAdapterContainer(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const FoodCompaniesPage()));
              },
              child: const DerivColoredContainer(
                color: FoundationColors.cardBackground,
                child: DerivLargeText('Food Companies'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
