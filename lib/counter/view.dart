import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Fish-Redux'),
    ),
    body: CounterHomeWapper(
        state: state, dispatch: dispatch, viewService: viewService),
    floatingActionButton: FloatingActionButtonWrapper(
        state: state, dispatch: dispatch, viewService: viewService),
  );
}

class FloatingActionButtonWrapper extends StatelessWidget {
  final CounterState state;
  final Dispatch dispatch;
  final ViewService viewService;

  const FloatingActionButtonWrapper(
      {Key key, this.state, this.dispatch, this.viewService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('FloatingActionButtonWrapper build');
    return FloatingActionButton(
      onPressed: (){
//        dispatch(CounterActionCreator.onEffectIncrement());
        dispatch(CounterActionCreator.onReducerIncrement());
      },
      child: Text('${state.count}'),
    );
  }
}

class CounterHomeWapper extends StatelessWidget {
  final CounterState state;
  final Dispatch dispatch;
  final ViewService viewService;

  const CounterHomeWapper(
      {Key key, this.state, this.dispatch, this.viewService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('CounterHomeWapper build');
    return CenterWrapper(state:state,dispatch:dispatch,viewService:viewService);
  }
}


class CenterWrapper extends StatelessWidget {

  final CounterState state;
  final Dispatch dispatch;
  final ViewService viewService;

  const CenterWrapper(
      {Key key, this.state, this.dispatch, this.viewService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('CenterWrapper build');
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ActionChip(
              label: Text('${state.count}'),
              onPressed: () {
                dispatch(CounterActionCreator.onEffectDecrement());
                dispatch(CounterActionCreator.onReducerDecrement());
              }
          ),
          TestWidget(),
        ],
      );
  }
}


class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('TestWidget build');
    return Container();
  }
}





