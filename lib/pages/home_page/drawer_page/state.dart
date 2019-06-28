import 'package:fish_redux/fish_redux.dart';

class drawerState implements Cloneable<drawerState> {

  @override
  drawerState clone() {
    return drawerState();
  }
}

drawerState initState(Map<String, dynamic> args) {
  return drawerState();
}
