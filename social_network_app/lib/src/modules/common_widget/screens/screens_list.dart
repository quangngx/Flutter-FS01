import 'package:flutter/material.dart';

import '../../../config/configs.dart';
import '../../../constants/constants.dart';
import '../widgets/widgets.dart';

class ScreensList extends StatelessWidget {
  const ScreensList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screens List'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.regularPadding),
          child: Column(
              children: Routes.screens
                  .map((e) => CommonWidgetButton(
                      content: e,
                      onTap: () {
                        Navigator.pushNamed(context, e);
                      },
                      size: size))
                  .toList()),
        ),
      ),
    );
  }
}
