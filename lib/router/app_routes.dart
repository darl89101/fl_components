import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),
    MenuOption(
        route: 'listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const HomeScreen(),
        icon: Icons.add_alert_sharp),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const HomeScreen(),
        icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRputes = {};

    // for (var i = 0; i < menuOptions.length; i++) {
    //   appRputes[menuOptions[i].url] = (_) => menuOptions[i].screen;
    // }
    for (final item in menuOptions) {
      // appRputes[item.url] = (_) => item.screen;
      appRputes.addAll({ item.route: (_) => item.screen });
    }

    return appRputes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (_) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (_) => const Listview2Screen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
