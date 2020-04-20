import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CounterAction {
  effect_increment,
  effect_decrement,
  reducer_increment,
  reducer_decrement
}


class CounterActionCreator {
  static Action onEffectIncrement() {
    return const Action(CounterAction.effect_increment);
  }

  static Action onReducerIncrement() {
    return const Action(CounterAction.reducer_increment);
  }

  static Action onEffectDecrement(){
    return const Action(CounterAction.effect_increment);
  }

  static Action onReducerDecrement(){
    return const Action(CounterAction.reducer_decrement);
  }
}
