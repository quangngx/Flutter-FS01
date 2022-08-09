import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/stateless/stless.dart';

class CommonWidgetButton extends StatelessWidget {
  final String content;
  final VoidCallback onTap;
  final Size size;

  const CommonWidgetButton(
      {Key? key,
      required this.content,
      required this.onTap,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: PrimaryButton(content: content, size: size, onTap: onTap),
    );
  }
}
