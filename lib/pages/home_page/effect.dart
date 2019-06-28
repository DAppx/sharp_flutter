import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharp_flutter/app_store/state.dart';

//import 'package:sharp_flutter/pages/tv/home_page/page.dart';

import 'action.dart';
import 'state.dart';

Effect<homeState> buildEffect() {
  return combineEffects(<Object, Effect<homeState>>{
    homeAction.action: _onAction,
    homeAction.onShowTV: _onShowTV,
    homeAction.onChangeThemeColor: _onChangeThemeColor,
  });
}

void _onAction(Action action, Context<homeState> ctx) {
}

void _onShowTV(Action action, Context<homeState> ctx) {

//  Navigator.of(ctx.context).push(MaterialPageRoute(builder: (context) {
//    return tvhomePage().buildPage(null);
//  }));

  Navigator.of(ctx.context)
      .pushNamed('tv_home', arguments: null);
}

void _onChangeThemeColor(Action action, Context<homeState> ctx) {
  Provider.of<AppState>(ctx.context).setThemeColor(action.payload);
}
