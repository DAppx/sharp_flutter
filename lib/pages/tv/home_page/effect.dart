import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<tvhomeState> buildEffect() {
  return combineEffects(<Object, Effect<tvhomeState>>{
    tvhomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<tvhomeState> ctx) {
}
