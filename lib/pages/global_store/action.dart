import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GlobalAction { changeThemeColor, action }

class GlobalActionCreator {
  static Action onchangeThemeColor() {
    return const Action(GlobalAction.changeThemeColor);
  }
}
