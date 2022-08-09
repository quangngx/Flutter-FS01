import 'package:flutter/material.dart';

import '../../config/configs.dart';

class PrimaryButton extends StatelessWidget {
  final Size size;
  final String content;
  final VoidCallback onTap;

  const PrimaryButton(
      {Key? key,
      required this.content,
      required this.size,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: size.height / 16,
        width: size.width,
        decoration: pinkGradientWithRadius(),
        child: Text(content),
      ),
    );
  }
}

BoxDecoration pinkGradientWithRadius() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [DarkTheme.darkerPink, DarkTheme.lighterPink],
    ),
  );
}
