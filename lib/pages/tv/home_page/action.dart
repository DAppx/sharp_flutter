import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum tvhomeAction {
  onFetch,
  action }

class tvhomeActionCreator {

  static Action onAction() {
    return const Action(tvhomeAction.action);
  }

  static Action onFetchAction() {
    return Action(tvhomeAction.onFetch);
  }

}
