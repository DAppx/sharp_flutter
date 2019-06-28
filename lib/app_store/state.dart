import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:provider/provider.dart';

import 'package:sharp_flutter/pages/home_page/page.dart';
import 'package:sharp_flutter/pages/tv/home_page/page.dart';

class AppState with ChangeNotifier {

  ///主题
  ThemeData themeData;
  Color themeColor = Colors.red;
  ///语言
  Locale locale;

  void setThemeColor(Color theColor) {
    themeColor = theColor;
    notifyListeners();
  }

}


class SharpApp extends StatelessWidget {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'main_home': homePage(),
        'tv_home':   tvhomePage(),
      },
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) =>AppState() ),
      ],
      child: Consumer<AppState>(
          builder: (context, appState, _) {
            return MaterialApp(
              title: 'Sharp Flutter',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                //primarySwatch: Colors.red,
                //primarySwatch: Colors.teal,
                primarySwatch:appState.themeColor,
                //brightness: Brightness.dark,
              ),
              home: routes.buildPage('main_home', null),
              onGenerateRoute: (RouteSettings settings) {
                return MaterialPageRoute<Object>(builder: (BuildContext context) {
                  return routes.buildPage(settings.name, settings.arguments);
                });
              },
            );
          }
      )
    );
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.teal,
//        brightness: Brightness.dark,
//      ),
//      home: homePage().buildPage(null),
//      // home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
  }
}