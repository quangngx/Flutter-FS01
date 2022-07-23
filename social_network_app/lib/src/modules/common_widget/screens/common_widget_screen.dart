import 'package:flutter/material.dart';

import '../../../config/configs.dart';
import '../../../constants/constants.dart';
import '../widgets/widgets.dart';

class CommonWidgetScreen extends StatelessWidget {
  const CommonWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Widget Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.regularPadding),
          child: Column(
            children: [
              CommonWidgetButton(
                  size: size,
                  content: 'Components',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.componentsScreen);
                  }),
              CommonWidgetButton(
                  size: size,
                  content: 'Screens',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.screensList);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
