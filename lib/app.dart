import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/counter/page.dart';
import 'package:flutter/material.dart' hide Action,Page;

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'counter': CounterPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('counter', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
