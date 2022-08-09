import 'package:flutter/material.dart';
import 'package:flutter_social_network/configs/routes.dart';
import 'package:flutter_social_network/l10n/l10n.dart';
import 'package:flutter_social_network/widgetCatalog/stless/stless.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.summaryAppBarTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: ListView.builder(
          itemCount: Routes.routes.length,
          itemBuilder: (context, index) => PrimaryLightButton(
            size: size,
            title: Routes.routes[index],
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.routes[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
