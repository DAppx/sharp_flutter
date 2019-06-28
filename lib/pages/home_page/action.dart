import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

//TODO replace with your own action
enum homeAction { onShowTV, onChangeThemeColor, action }

class homeActionCreator {
  static Action onShowTV() {
    return const Action(homeAction.onShowTV);
  }
  static Action onChangeThemeColor(Color themeColor) {
    return  Action(homeAction.onChangeThemeColor, payload: themeColor );
  }
}
