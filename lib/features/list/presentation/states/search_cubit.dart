import 'package:atomic_architecture_poc/features/list/presentation/states/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchStateInitial());

  void search(String query, List<String> items) {
    emit(const SearchStateLoading());
    if (query.isEmpty) {
      emit(const SearchStateInitial());
    } else {
    print("SearchStateLoaded");
      
      emit(SearchStateLoaded(items
        .where((element) => element.toLowerCase().contains(query))
        .toList()));
    }
  }
}