import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/themes.dart';

class GradientButton {

  // static final gradientButtonRadius22 = Container(
  //   height: size.height/15,
  //   decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //       gradient: const LinearGradient(
  //         begin: Alignment.bottomLeft,
  //         end: Alignment.topRight,
  //         colors: [
  //           DarkTheme.darkerPink,
  //           DarkTheme.lighterPink
  //         ],
  //       )
  //   ),
  // );

   Widget gradientPinkButton (double height, double radius) {
    return Container(
          height: height,
          decoration: _pinkGradientWithRadius(radius)
        );
  }

  BoxDecoration _pinkGradientWithRadius(double radius) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            DarkTheme.darkerPink,
            DarkTheme.lighterPink
          ],
        )
    );
  }

}