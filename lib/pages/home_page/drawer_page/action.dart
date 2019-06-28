import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum drawerAction { action }

class drawerActionCreator {
  static Action onAction() {
    return const Action(drawerAction.action);
  }
}
