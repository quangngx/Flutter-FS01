import 'package:flutter/material.dart';
import 'package:social_network_app/constants/app_constants.dart';
import '../../../config/themes/themes.dart';
import '../../../widgets/stateful/stful.dart';
import '../../../widgets/stateless/stless.dart';

class ComponentsScreen extends StatelessWidget {
  const ComponentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    Widget session(Widget child) {
      return Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppConstants.regularPadding),
        child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(
                vertical: AppConstants.regularPadding),
            decoration: BoxDecoration(
                color: DarkTheme.dark,
                borderRadius:
                    BorderRadius.circular(AppConstants.regularRadius)),
            child: child),
      );
    }

    Widget sessionTitle(String content) {
      return Padding(
        padding: const EdgeInsets.only(bottom: AppConstants.regularPadding),
        child: Text(
          content,
          style: TypoStyle.heading2Bold.copyWith(color: DarkTheme.lighterPink),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Components Screen'),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstants.regularPadding),
        child: Column(
          children: [
            session(Column(
              children: [
                sessionTitle('All Typo'),
                const Text(
                  'Heading 1',
                  style: TypoStyle.heading1,
                ),
                const Text(
                  'Heading 1 Bold',
                  style: TypoStyle.heading1Bold,
                ),
                const Text(
                  'Heading 2',
                  style: TypoStyle.heading2,
                ),
                const Text(
                  'Heading 2',
                  style: TypoStyle.heading2Bold,
                ),
                const Text(
                  'Heading 3',
                  style: TypoStyle.heading3,
                ),
                const Text(
                  'Heading 3',
                  style: TypoStyle.heading3Bold,
                ),
              ],
            )),
            session(Column(
              children: [
                sessionTitle('Dots'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    StatusDot(),
                    InboxDot(
                      messageCounter: 10,
                    )
                  ],
                )
              ],
            )),
            session(Column(
              children: [
                sessionTitle('Avatar Item'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomCircleAvatar(messageCounter: null, isActive: null),
                    CustomCircleAvatar(messageCounter: null, isActive: true),
                    CustomCircleAvatar(messageCounter: 9, isActive: true),
                    CustomCircleAvatar(messageCounter: 10, isActive: true),
                  ],
                ),
              ],
            )),
            session(Column(
              children: [
                sessionTitle('Inbox Item'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InboxItem(size: size),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
