import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.effect_increment: _onIncrement,
    CounterAction.effect_decrement: _onDecrement,
  });
}

void _onIncrement(Action action, Context<CounterState> ctx) {
  print('Effect_onIncrement');
}

void _onDecrement(Action action, Context<CounterState> ctx) {
  print('Effect_onDecrement');
}
