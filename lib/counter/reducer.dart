import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{
      CounterAction.reducer_increment: _onIncrement,
      CounterAction.reducer_decrement: _onDecrement,
    },
  );
}

CounterState _onIncrement(CounterState state, Action action) {
  print('Reducer_onIncrement');
  state.count++;
  return state.clone();
}

CounterState _onDecrement(CounterState state, Action action) {
  print('Reducer_onDecrement');
  state.count--;
  return state.clone();
}