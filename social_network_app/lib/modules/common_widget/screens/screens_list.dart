import 'package:flutter/material.dart';

class ScreensList extends StatelessWidget {
  const ScreensList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Screens List'),
      ),
      body: SingleChildScrollView(
        child: Column(

        ),
      ),
    );
  }
}
