import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showBlockDialog(
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
              AppIcons.blockIcon,
              scale: 4,
            ),
            const SizedBox(
              height: 16,
            ),
            TextWidget(
              text: "Confirm Block",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Are you sure you want to block this user? This action is permanent.",
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
                    borderColor: AppColor.redColor,
                    textColor: AppColor.redColor,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: AppPrimaryButton(
                    buttonText: "Yes, Block",
                     buttonColor: AppColor.redColor,
                    textColor: AppColor.whiteColor,
                    onPressed: () {
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
