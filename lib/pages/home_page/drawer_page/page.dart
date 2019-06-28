import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class drawerPage extends Page<drawerState, Map<String, dynamic>> {
  drawerPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<drawerState>(
                adapter: null,
                slots: <String, Dependent<drawerState>>{
                }),
            middleware: <Middleware<drawerState>>[
            ],);

}
