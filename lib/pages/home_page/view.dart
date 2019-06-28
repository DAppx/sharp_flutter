import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import 'action.dart';
import 'state.dart';

Widget buildView(homeState state, Dispatch dispatch, ViewService viewService) {
  return  Scaffold(
    key: state.scaffoldKey,
    appBar: AppBar(
      centerTitle:  true,
      title:  Text("sharp flutter"),
      leading: IconButton(
          icon: Icon(Icons.all_inclusive),
          onPressed: null,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.tv),
          onPressed: () => dispatch(homeActionCreator.onShowTV()),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => dispatch(homeActionCreator.onChangeThemeColor(Colors.blue)),
        ),
      ],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'sharp flutter page home',
          ),
        ],
      )

    ),
  );
}
