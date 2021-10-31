import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/themes.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                height: size.height/15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      DarkTheme.darkerPink,
                      DarkTheme.lighterPink
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
