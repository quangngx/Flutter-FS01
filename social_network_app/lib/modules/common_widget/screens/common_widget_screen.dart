import 'package:flutter/material.dart';
import 'package:social_network_app/config/routes/routes.dart';
import 'package:social_network_app/constants/app_constants.dart';
import 'package:social_network_app/widgets/stateless/gradient_button.dart';

class CommonWidgetScreen extends StatelessWidget {
  const CommonWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    Widget commonWidgetButton(String content, VoidCallback onTap) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: GradientPinkButton(
            content: content,
            height: size.height / 16,
            width: size.width,
            radius: AppConstants.regularRadius,
            onTap: onTap),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Widget Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.regularPadding),
          child: Column(
            children: [
              commonWidgetButton('Components', () {
                Navigator.pushNamed(context, Routes.componentsScreen);
              }),
              commonWidgetButton('Screens', () {
                Navigator.pushNamed(context, Routes.screensList);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
