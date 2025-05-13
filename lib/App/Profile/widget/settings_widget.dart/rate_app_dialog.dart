import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

void showRateAppDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        actionsPadding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
        backgroundColor: AppColor.whiteColor,
        content: Column(
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppIcons.starIcon,
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Are you enjoying the app",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Leave a review for us.                                     ",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Expanded(
                  child: AppOutlinedButton(
                    buttonText: "Not Now",
                    textColor: AppColor.primaryColor,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: AppPrimaryButton(
                    buttonText: "Ok",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
