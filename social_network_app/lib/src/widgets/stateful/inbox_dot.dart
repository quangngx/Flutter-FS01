import 'package:flutter/material.dart';

import '../../config/configs.dart';
import '../../constants/constants.dart';
import '../stateless/stless.dart';


class InboxDot extends StatelessWidget {
  final int messageCounter;

  const InboxDot({Key? key, required this.messageCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.dotSized,
      width: AppConstants.dotSized,
      decoration: BoxDecoration(
          color: DarkTheme.white, borderRadius: BorderRadius.circular(50)),
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(AppConstants.dotSized / 10),
          decoration: pinkGradientWithRadius(50),
          child: Text(
            _getMessageCounter(),
            style: const TextStyle(fontSize: 10),
          )),
    );
  }

  String _getMessageCounter() {
    if (messageCounter < 10 && messageCounter > 0) {
      return messageCounter.toString();
    } else {
      return '9+';
    }
  }
}
