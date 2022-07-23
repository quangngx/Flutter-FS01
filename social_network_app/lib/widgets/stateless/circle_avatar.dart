import 'package:flutter/material.dart';
import 'package:social_network_app/config/themes/colorful.dart';
import 'package:social_network_app/widgets/stateful/inbox_dot.dart';
import 'package:social_network_app/widgets/stateless/status_dot.dart';

class CustomCircleAvatar extends StatelessWidget {
  final int? messageCounter;
  final bool? isActive;

  const CustomCircleAvatar({Key? key, required this.messageCounter, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _getChild() {
      if (messageCounter == null && isActive == null) { // CASE NORMAL AVATAR
        return ClipOval(
          child: Container(
            height: 64,
            width: 64,
            color: DarkTheme.orange,
          ),
        );
      } else if (messageCounter != null) { // CASE RED
        return SizedBox(
          height: 64,
          width: 64,
          child: Stack(
            children: [
              ClipOval(
                child: Container(
                  color: DarkTheme.orange,
                ),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  child: InboxDot(
                    messageCounter: messageCounter!,
                  ))
            ],
          ),
        );
      } else if (isActive == true) { //CASE GREEN
        return SizedBox(
          height: 64,
          width: 64,
          child: Stack(
            children: [
              ClipOval(
                child: Container(
                  color: DarkTheme.orange,
                ),
              ),
              Container(
                  alignment: Alignment.bottomRight, child: const StatusDot())
            ],
          ),
        );
      } else {
        return const Text('Error');
      }
    }

    return _getChild();
  }
}
