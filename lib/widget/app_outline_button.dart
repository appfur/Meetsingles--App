import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonWidth = double.infinity,
    this.imageString,
    this.borderColor = AppColor.primaryColor,
    this.textColor = AppColor.blackColor,
    this.buttonColor = AppColor.whiteColor,
  });
  final String buttonText;
  final Function() onPressed;
  final double buttonWidth;
  final String? imageString;
  final Color borderColor;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: 64,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            buttonColor,
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: borderColor),
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
            imageString == null ? const SizedBox() : Image.asset(imageString!),
            imageString == null
                ? const SizedBox()
                : const SizedBox(
                    width: 10,
                  ),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
