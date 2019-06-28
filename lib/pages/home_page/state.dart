import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:sharp_flutter/pages/global_store/state.dart';

class homeState implements GlobalBaseState<homeState> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  homeState clone() {
    return homeState();
  }
}

homeState initState(Map<String, dynamic> args) {
  return homeState();
}
