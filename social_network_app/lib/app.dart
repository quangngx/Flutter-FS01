import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/config/routes/router.dart' as router;
import 'src/config/configs.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: DarkTheme.darkBackground, elevation: 0),
          primaryColor: DarkTheme.yellow,
          scaffoldBackgroundColor: DarkTheme.darkBackground,
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context)
              .textTheme
              .apply(
                  bodyColor: DarkTheme.white, displayColor: DarkTheme.white))),
      debugShowCheckedModeBanner: false,
      title: 'Social Network App',
      initialRoute: Routes.commonWidgetScreen,
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
