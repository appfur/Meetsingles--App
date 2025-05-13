import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

void showSelfieVerificationDialog(
  BuildContext context,
  String status,
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
            const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        actionsPadding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
        backgroundColor: AppColor.whiteColor,
        content: Column(
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              status == "Successful"
                  ? AppIcons.checkCircleIcon
                  : AppIcons.sirenAlertIcon,
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Selfie Verification $status",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Your selfie verification has been successfully completed. You now have a verification badge",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "OK",
              onPressed: () {
                Get.back();
                Get.back();
              },
            ),
          ],
        ),
      );
    },
  );
}
