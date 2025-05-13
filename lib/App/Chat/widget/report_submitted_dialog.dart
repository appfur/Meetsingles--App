import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showReportSubmittedDialog(
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
              AppIcons.checkCircleIcon,
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Report Submitted",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Thank you for reporting. Our team will review your report and take appropriate action.",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "Done",
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      );
    },
  );
}
