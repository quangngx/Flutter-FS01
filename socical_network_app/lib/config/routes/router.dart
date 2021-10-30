import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socical_network_app/modules/common_widget/common_widget_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings){
      switch (settings.name) {
        case 'CommonWidgetScreen':
          {
            return MaterialPageRoute(builder: (_) => const CommonWidgetScreen());
          }
          case 'MessageListPage':
          {
            return MaterialPageRoute(builder: (_) => const Scaffold());
          }
        default:{
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
        }
      }
  }
}