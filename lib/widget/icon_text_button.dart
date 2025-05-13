import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class AppIconTextButton extends StatelessWidget {
  const AppIconTextButton({
    super.key,
    required this.buttonText,
    required this.icon,
    required this.onPressed,
    this.buttonWidth = double.infinity,
    this.buttonColor = AppColor.primaryColor,
    this.textColor = AppColor.whiteColor,
  });
  final String buttonText;
  final Function() onPressed;
  final double buttonWidth;
  final Color buttonColor;
  final Color textColor;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: 64,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            buttonColor,
          ),
          elevation: WidgetStateProperty.all<double>(0),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 8,
            ),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
