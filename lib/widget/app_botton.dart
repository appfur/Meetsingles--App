import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonWidth = double.infinity,
    this.buttonHeight = 64,

    this.buttonColor = AppColor.primaryColor,
    this.textColor = AppColor.whiteColor,
  });
  final String buttonText;
  final Function() onPressed;
  final double buttonWidth;
  final double buttonHeight;

  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
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
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// class AppSecondaryButton extends StatelessWidget {
//   const AppSecondaryButton(
//       {super.key,
//       required this.buttonText,
//       required this.onPressed,
//       this.buttonWidth = double.infinity});
//   final String buttonText;
//   final Function() onPressed;
//   final double buttonWidth;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: buttonWidth,
//       height: 40,
//       child: ElevatedButton(
//         style: ButtonStyle(
//           enableFeedback: false,
//           backgroundColor: MaterialStateProperty.all<Color>(
//             AppTheme.primaryColor.shade50,
//           ),
//           elevation: MaterialStateProperty.all<double>(0),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5),
//             ),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(
//           buttonText,
//           style: TextStyle(
//             fontSize: 16,
//             color: AppTheme.primaryColor.shade200,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
