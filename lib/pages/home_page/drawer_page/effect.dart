import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<drawerState> buildEffect() {
  return combineEffects(<Object, Effect<drawerState>>{
    drawerAction.action: _onAction,
  });
}

void _onAction(Action action, Context<drawerState> ctx) {
}
