import 'dart:core';

import 'package:flutter/material.dart';
import 'package:game/main.dart';
import 'package:game/ui/leaderboards_screen.dart';
import 'package:game/ui/main_menu_screen.dart';
import 'package:game/ui/main_view.dart';

enum Routes {
  main('/'),
  game('/game'),
  rate('/rate'),
  leaderboard('/leaderboard');

  final String route;

  const Routes(this.route);

  static Route routes(RouteSettings settings) {
    MaterialPageRoute _buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    final routeName = Routes.values.firstWhere((e) => e.route == settings.name);

    switch (routeName) {
      case Routes.main:
        return _buildRoute(const MainMenuScreen());
      case Routes.game:
        return _buildRoute(const MyGameWidget());
      case Routes.leaderboard:
        return _buildRoute(const LeaderboardScreen());
      case Routes.rate:
        return _buildRoute(MainView());
      default:
        throw Exception('Route does not exists');
    }
  }
}

extension BuildContextExtension on BuildContext {
  void pushAndRemoveUntil(Routes route) {
    Navigator.pushNamedAndRemoveUntil(this, route.route, (route) => false);
  }

  void push(Routes route) {
    Navigator.pushNamed(this, route.route);
  }
}
