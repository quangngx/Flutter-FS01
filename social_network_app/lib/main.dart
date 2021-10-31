import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/themes.dart';
import 'config/routes/routes.dart';
import 'config/routes/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: DarkTheme.darkBackground,
          elevation: 0
        ),
        primaryColor: DarkTheme.yellow,
        scaffoldBackgroundColor: DarkTheme.darkBackground,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: DarkTheme.white,
          displayColor: DarkTheme.white
        )
      ),
      debugShowCheckedModeBanner: false,
      title: 'Social Network App',
      initialRoute: Routes.commonWidgetScreen,
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
