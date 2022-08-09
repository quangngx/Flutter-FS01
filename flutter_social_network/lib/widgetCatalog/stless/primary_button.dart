import 'package:flutter/material.dart';
import 'package:flutter_social_network/theme/app_color.dart';

class PrimaryLightButton extends StatelessWidget {
  const PrimaryLightButton({
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
          color: AppColor.primaryColor1,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          // Routes.routes[index],
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: AppColor.neutralDark01),
        ),
      ),
    );
  }
}

class PrimaryLightButtonWithIcon extends StatelessWidget {
  const PrimaryLightButtonWithIcon({
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
        height: size.height / 16,
        width: size.width,
        decoration: BoxDecoration(
          color: AppColor.primaryColor1,
          borderRadius: BorderRadius.circular(8),
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
                color: AppColor.neutralDark01,
              ),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColor.neutralDark01),
            ),
          ],
        ),
      ),
    );
  }
}
