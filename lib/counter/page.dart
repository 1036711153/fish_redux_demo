import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CounterPage extends Page<CounterState, Map<String, dynamic>> {
  CounterPage()
      : super(
          initState: initState,
          reducer: buildReducer(),
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<CounterState>(
              adapter: null, slots: <String, Dependent<CounterState>>{}),
          middleware: <Middleware<CounterState>>[],
        );
}
