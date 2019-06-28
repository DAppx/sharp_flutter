import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SectionHeaderAction { action }

class SectionHeaderActionCreator {
  static Action onAction() {
    return const Action(SectionHeaderAction.action);
  }
}
