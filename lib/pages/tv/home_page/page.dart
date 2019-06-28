import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class tvhomePage extends Page<tvhomeState, Map<String, dynamic>> {
  tvhomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<tvhomeState>(
                adapter: null,
                slots: <String, Dependent<tvhomeState>>{
                }),
            middleware: <Middleware<tvhomeState>>[
            ],);

}
