import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showUnmatchDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        actionsPadding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        backgroundColor: AppColor.whiteColor,
        content: Column(
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppIcons.heartBroken,
              scale: 6,
            ),
            const SizedBox(
              height: 16,
            ),
            TextWidget(
              text: "Confirm Unmatch",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Are you sure you want to unmatch this user? This action is permanent.",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: AppOutlinedButton(
                    buttonText: "No, cancel",
                    textColor: AppColor.primaryColor,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: AppPrimaryButton(
                    buttonText: "Yes, unmatch",
                    onPressed: () {
                      Get.back();
                      Get.back();
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
