import 'package:dreamconnect/constants/navigators/route_names.dart';
import 'package:dreamconnect/features/screens/transafer_screen.dart';
import 'package:flutter/material.dart';

import '../../features/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.homeScreen:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const HomeScreen());

    case Routes.transferScreen:
      return _getPageRoute(
          routeName: settings.name, viewToShow: const TransferScreen());


    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow!,
  );
}
