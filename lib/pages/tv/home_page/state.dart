import 'package:fish_redux/fish_redux.dart';
import 'package:sharp_flutter/models/tv/home.dart';
import 'package:flutter/material.dart';
import 'package:sharp_flutter/pages/global_store/state.dart';

class tvhomeState implements GlobalBaseState<tvhomeState> {
  tvHomeModel homeModel = tvHomeModel();
  bool isLoading = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  tvhomeState clone() {
    return tvhomeState()
      ..homeModel = this.homeModel
      ..isLoading = this.isLoading;
  }
  bool get IsDataReady {
    return homeModel.topics.isNotEmpty && homeModel.sections.isNotEmpty;
  }
}

tvhomeState initState(Map<String, dynamic> args) {
  return tvhomeState()..isLoading = true;
}
