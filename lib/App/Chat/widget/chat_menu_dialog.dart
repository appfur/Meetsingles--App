import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/widget/report_bottom_sheet.dart';
import 'package:meet_singles/App/Chat/widget/unmatch_dialog.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';
import 'block_dialog.dart';

void showChatMenuDialog(
  BuildContext context,
  String name,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Align(
                alignment: Alignment.topRight,
                child: TextWidget(
                  text: "Cancel",
                  color: AppColor.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Security Options",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text: "Manage your interactions for a safer experience.",
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "Unmatch $name",
              onPressed: () {
                Get.back();
                showUnmatchDialog(context);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppPrimaryButton(
              buttonText: "Block $name",
              buttonColor: AppColor.redColor,
              onPressed: () {
                Get.back();
                showBlockDialog(context);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppOutlinedButton(
              buttonText: "Report $name",
              textColor: AppColor.primaryColor,
              buttonColor: AppColor.backgroundColor,
              onPressed: () {
                showReportBottomSheet(context, name);
              },
            ),
          ],
        ),
      );
    },
  );
}
