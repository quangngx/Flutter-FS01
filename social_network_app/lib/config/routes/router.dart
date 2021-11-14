import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_app/modules/common_widget/screens/common_widget_screen.dart';
import 'package:social_network_app/modules/common_widget/screens/components_screen.dart';
import 'package:social_network_app/modules/common_widget/screens/screens_list.dart';
import 'package:social_network_app/modules/message/screens/message_list_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'CommonWidgetScreen':
        {
          return MaterialPageRoute(builder: (_) => const CommonWidgetScreen());
        }
      case 'MessageListPage':
        {
          return MaterialPageRoute(builder: (_) => const Scaffold());
        }
      case 'ComponentsScreen':
        {
          return MaterialPageRoute(builder: (_) => const ComponentsScreen());
        }
      case 'ScreensList':
        {
          return MaterialPageRoute(builder: (_) => const ScreensList());
        }
      case 'MessageScreen':
        {
          return MaterialPageRoute(builder: (_) => const MessageScreen());
        }
      default:
        {
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
        }
    }
  }
}
