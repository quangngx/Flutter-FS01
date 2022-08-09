import 'package:flutter/material.dart';
import 'package:flutter_social_network/widgetCatalog/stless/stless.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Summary Widget',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: PrimaryLightButton(size: size, title: 'Primary Light'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: SecondaryButton(size: size, title: 'Primary Light'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child:
                PrimaryLightButtonWithIcon(size: size, title: 'Primary Light'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: SecondaryButtonWithIcon(size: size, title: 'Primary Light'),
          ),
        ],
      ),
    );
  }
}
