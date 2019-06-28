import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'package:sharp_flutter/pages/global_store/state.dart';
import 'package:sharp_flutter/pages/global_store/store.dart';

import 'package:sharp_flutter/pages/home_page/page.dart';
import 'package:sharp_flutter/pages/tv/home_page/page.dart';

//create global page helper
Page<T, dynamic> pageConfiguration<T extends GlobalBaseState<T>>(
    Page<T, dynamic> page) {
  return page

  ///connect with app-store
    ..connectExtraStore(GlobalStore.store, (T pagestate, GlobalState appState) {
      return pagestate;
//      return pagestate.themeColor == appState.themeColor
//          ? pagestate
//          : ((pagestate.clone())..themeColor = appState.themeColor);
    });

}


Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
       'main_home': pageConfiguration(homePage()),
       'tv_home':   pageConfiguration(tvhomePage()),
      },
    ),
  ]);

  return MaterialApp(
    title: 'Sharp Flutter',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
      brightness: Brightness.dark,
    ),
    home: routes.buildPage('main_home', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}