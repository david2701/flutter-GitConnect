import 'package:equatable/equatable.dart';
import 'package:flutter_github_connect/bloc/search/index.dart';
import 'package:flutter_github_connect/bloc/search/model/search_userModel.dart';

abstract class SearchState extends Equatable {
  @override
  List<Object> get props => ([]);
}

class LoadingSearchState extends SearchState {}

/// Initialized
class LoadedSearchState extends SearchState {
  final List<dynamic> list;
  final GithubSearchType type;
  LoadedSearchState(this.list, this.type);
  @override
  String toString() => 'LoadedRepositoriesState';

  List<SearchUser> toUSerList() {
    List<SearchUser> userList = [];
    list
      ..forEach((element) {
        userList.add(element);
      });
    return userList;
  }
}

class ErrorRepoState extends SearchState {
  final String errorMessage;

  ErrorRepoState(int version, this.errorMessage);
  @override
  String toString() => 'ErrorRepoState';
}