import 'package:flutter/material.dart';
import 'package:flutter_social_network/theme/app_color.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.size,
    required this.title,
    this.onTap,
  });

  final Size size;
  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        alignment: Alignment.center,
        height: size.height / 16,
        width: size.width,
        decoration: BoxDecoration(
          // color: AppColor.primaryColor1,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColor.primaryColor1),
        ),
        child: Text(
          // Routes.routes[index],
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: AppColor.primaryColor1),
        ),
      ),
    );
  }
}

class SecondaryButtonWithIcon extends StatelessWidget {
  const SecondaryButtonWithIcon({
    super.key,
    required this.size,
    required this.title,
    this.onTap,
  });

  final Size size;
  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        alignment: Alignment.center,
        height: size.height / 16,
        width: size.width,
        decoration: BoxDecoration(
          // color: AppColor.primaryColor1,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColor.primaryColor1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              height: 24,
              width: 24,
              child: const Icon(
                Icons.format_shapes,
                color: AppColor.primaryColor1,
              ),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColor.primaryColor1),
            ),
          ],
        ),
      ),
    );
  }
}
