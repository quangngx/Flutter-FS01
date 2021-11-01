import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/themes.dart';
import 'package:social_network_app/constants/app_constants.dart';

class StatusDot extends StatelessWidget {
  const StatusDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
