import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgriddesigntask/screens/home_screen.dart';
import 'package:xgriddesigntask/services/theme_engine.dart';

import '../view_models/home_view_model.dart';

class StateService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static String get initialRoute => HomeScreen.id;

  static BuildContext get context => navigatorKey.currentState!.context;

  static BuildContext get overlayContext =>
      navigatorKey.currentState!.overlay!.context;

  static List<ChangeNotifierProvider> get providers => [
    ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
    ChangeNotifierProvider<ThemeEngine>(create: (_) => ThemeEngine()),
  ];

  static Map<String, Widget Function(BuildContext)> get routes => {
    HomeScreen.id: (context) => const HomeScreen(),
  };

  static pushNamed({required String routeName, bool replace = false}) {
    if (replace) {
      navigatorKey.currentState!.pushReplacementNamed(routeName);
    } else {
      navigatorKey.currentState!.pushNamed(routeName);
    }
  }

  static push({required route, bool replace = false}) {
    if (replace) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => route),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => route),
      );
    }
  }

  static pop() {
    navigatorKey.currentState!.pop();
  }

  static pushNamedAndRemoveUntil(
      {required String toBePushed, required String toBeRemovedUntil}) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(
        toBePushed, ModalRoute.withName(toBeRemovedUntil));
  }

  static pushNamedAndRemoveAll({required String toBePushed}) {
    navigatorKey.currentState!
        .pushNamedAndRemoveUntil(toBePushed, (Route<dynamic> route) => false);
  }
}
