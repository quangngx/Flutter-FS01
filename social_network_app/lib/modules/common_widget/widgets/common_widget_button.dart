import 'package:flutter/material.dart';
import 'package:social_network_app/constants/app_constants.dart';
import 'package:social_network_app/widgets/stateless/gradient_button.dart';

class CommonWidgetButton extends StatelessWidget {

  final String content;
  final VoidCallback onTap;
  final Size size;

  const CommonWidgetButton({ Key? key, required this.content, required this.onTap, required this.size }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}