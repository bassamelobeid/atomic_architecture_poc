
import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

//Search State initial
class SearchStateInitial extends SearchState {
  const SearchStateInitial();

  @override
  List<Object> get props => [];
}

//Search State loading
class SearchStateLoading extends SearchState {
  const SearchStateLoading();

  @override
  List<Object> get props => [];
}

//Search State loaded
class SearchStateLoaded extends SearchState {
  final List<String> items;
  const SearchStateLoaded(this.items);

  @override
  List<Object> get props => items;
}