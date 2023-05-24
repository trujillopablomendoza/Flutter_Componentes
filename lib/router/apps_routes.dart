import 'package:flutter/material.dart';
import 'package:fluttercomponentes6v/models/models.dart';
import 'package:fluttercomponentes6v/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";
  static final menuOptions = <MenuOption>[
    MenuOption(
        icon: Icons.remove,
        name: "Listview Tipo 1",
        route: "listview1",
        screen: ListView1Screen())
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
