import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/themes.dart';
import 'package:social_network_app/constants/app_constants.dart';
import 'package:social_network_app/widgets/stateless/gradient_button.dart';

class ComponentsScreen extends StatelessWidget {
  const ComponentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    Widget session(Widget child) {
      return Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppConstants.regularPadding),
        child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(
                vertical: AppConstants.regularPadding),
            decoration: BoxDecoration(
                color: DarkTheme.dark,
                borderRadius:
                    BorderRadius.circular(AppConstants.regularRadius)),
            child: child),
      );
    }

    Widget sessionTitle(String content) {
      return Padding(
        padding: const EdgeInsets.only(bottom: AppConstants.regularPadding),
        child: Text(content),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Components Screen'),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstants.regularPadding),
        child: Column(
          children: [
            session(Column(
              children: [
                sessionTitle('Status Dots'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: AppConstants.dotSized,
                      width: AppConstants.dotSized,
                      decoration: BoxDecoration(
                          color: DarkTheme.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                        margin: const EdgeInsets.all(AppConstants.dotSized / 8),
                        decoration: BoxDecoration(
                            color: DarkTheme.adding,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Container(
                      height: AppConstants.dotSized,
                      width: AppConstants.dotSized,
                      decoration: BoxDecoration(
                          color: DarkTheme.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          alignment: Alignment.center,
                          margin:
                              const EdgeInsets.all(AppConstants.dotSized /10),
                          decoration: pinkGradientWithRadius(50),
                          child: const Text(
                            '9',
                            style: TextStyle(fontSize: 10),
                          )),
                    ),
                  ],
                )
              ],
            )),
            session(Column(
              children: [sessionTitle('Avatar Item'), Container()],
            ))
          ],
        ),
      ),
    );
  }
}
