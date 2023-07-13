import 'package:atomic_architecture_poc/features/list/presentation/states/search_cubit.dart';
import 'package:atomic_architecture_poc/features/list/presentation/states/search_state.dart';
import 'package:flutter/material.dart';

import 'package:atomic_architecture_poc/core/presentation/molecules/deriv_app_bar.dart';
import 'package:atomic_architecture_poc/features/list/presentation/organisms/deriv_sliver_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchableListTemplate extends StatefulWidget {
  final List<String> items;
  final List<Widget> extraItems;
  const SearchableListTemplate(
      {super.key, required this.items, this.extraItems = const []});

  @override
  State<SearchableListTemplate> createState() => _SearchableListTemplateState();
}

class _SearchableListTemplateState extends State<SearchableListTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DerivAppBar(
            onChanged: (value) {
              BlocProvider.of<SearchCubit>(context).search(value, widget.items);
            },
          ),
          BlocBuilder<SearchCubit, SearchState>(
              bloc: BlocProvider.of<SearchCubit>(context),
              builder: (context, state) {
                if (state is SearchStateInitial) {
                  return DerivSliverList(items: widget.items);
                }
                if (state is SearchStateLoading) {
                  return const SliverToBoxAdapter(
                      child: CircularProgressIndicator());
                }
                if (state is SearchStateLoaded) {
                  return DerivSliverList(items: state.items);
                }
                return const SliverToBoxAdapter(
                    child: CircularProgressIndicator());
              }),
          ...widget.extraItems
        ],
      ),
    );
  }
}
