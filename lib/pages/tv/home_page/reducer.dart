import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<tvhomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<tvhomeState>>{
      tvhomeAction.action: _onAction,
    },
  );
}

tvhomeState _onAction(tvhomeState state, Action action) {
  final tvhomeState newState = state.clone();
  return newState;
}
