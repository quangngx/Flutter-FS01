import 'package:flutter/material.dart';
import 'package:flutter_social_network/authentication/views/log_in_page.dart';
import 'package:flutter_social_network/configs/routes.dart';
import 'package:flutter_social_network/counter/counter.dart';
import 'package:flutter_social_network/summary/summary_page.dart';
import 'package:flutter_social_network/summary/summary_widget.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root: //the first screen
        return MaterialPageRoute(builder: (_) => const SummaryPage());
      case Routes.summaryWidget: //the first screen
        return MaterialPageRoute(builder: (_) => const SummaryWidget());
      case Routes.counterPage: //the first screen
        return MaterialPageRoute(builder: (_) => const CounterPage());
      case Routes.loginPage: //the first screen
        return MaterialPageRoute(builder: (_) => const LogInPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
