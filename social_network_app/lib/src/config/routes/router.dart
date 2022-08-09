import 'package:flutter/material.dart';
import 'package:social_network_app/src/config/routes/routes.dart';
import 'package:social_network_app/src/modules/auth/login_screen.dart';
import '../../modules/common_widget/screens/common_widget_screen.dart';
import '../../modules/common_widget/screens/components_screen.dart';
import '../../modules/common_widget/screens/screens_list.dart';
import '../../modules/message/screens/message_list_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.commonWidgetScreen:
        {
          return MaterialPageRoute(builder: (_) => const CommonWidgetScreen());
        }
      case Routes.componentsScreen:
        {
          return MaterialPageRoute(builder: (_) => const ComponentsScreen());
        }
      case Routes.screensList:
        {
          return MaterialPageRoute(builder: (_) => const ScreensList());
        }
      case Routes.loginScreen:
        {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
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
