import 'package:flutter/material.dart';
import 'package:social_network_app/config/routes/routes.dart';
import 'package:social_network_app/constants/app_constants.dart';
import 'package:social_network_app/modules/common_widget/widgets/common_widget_button.dart';

class ScreensList extends StatelessWidget {
  const ScreensList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<String> screens = [
      Routes.messageScreen
    ];

    return Scaffold(
      appBar: AppBar(
        title:  const Text('Screens List'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.regularPadding),
          child: Column(
            children: screens.map((e) => Builder(builder: (context) => CommonWidgetButton(content: e, onTap: () {
              Navigator.pushNamed(context, e);
            }, size: size))).toList()
          ),
        ),
      ),
    );
  }
}
