import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/config/theme/app_color.dart';

class IconCircularButton extends StatelessWidget {
  const IconCircularButton(
      {super.key,
      required this.primaryColor,
      required this.imagePath,
      required this.onPressed,
      required this.iconColor});
  final Color primaryColor;
  final String imagePath;
  final Function()? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            CircleBorder(
              side: BorderSide(
                color: primaryColor,
                width: 0.5,
              ),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            AppColor.whiteColor,
          ),
        ),
        label: SvgPicture.asset(
          imagePath,
          width: 40,
          height: 40,
          color: iconColor,
        ),
      ),
    );
  }
}
