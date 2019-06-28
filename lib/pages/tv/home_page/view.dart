import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(tvhomeState state, Dispatch dispatch, ViewService viewService) {
  return  Scaffold(
    appBar: AppBar(
      centerTitle:  true,
      title:  Text("TV "),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: null,
        ),
      ],
    ),
    body: ModalProgressHUD(
      dismissible: false,
      color: Colors.transparent,
      opacity: 1,
      child: RefreshIndicator(
        onRefresh: () {
          return Future<void>.value(
              dispatch(tvhomeActionCreator.onFetchAction()));
        },
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'TV home page',
                ),
              ],
            )
          ),
      ),
      inAsyncCall: state.isLoading,
    ),
  );
}
