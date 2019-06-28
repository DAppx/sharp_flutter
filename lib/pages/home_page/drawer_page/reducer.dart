import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<drawerState> buildReducer() {
  return asReducer(
    <Object, Reducer<drawerState>>{
      drawerAction.action: _onAction,
    },
  );
}

drawerState _onAction(drawerState state, Action action) {
  final drawerState newState = state.clone();
  return newState;
}
