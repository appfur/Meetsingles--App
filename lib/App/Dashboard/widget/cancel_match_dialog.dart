import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account4.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

void showCancelMatchDialog(
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
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColor.blackColor,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: TextWidget(
                    text: "Cancel",
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
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
              color: AppColor.blackColor,
              fontSize: 14,
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "Block $name",
              buttonColor: AppColor.redColor,
              onPressed: () {
                Get.to(() => CreateAccount4());
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppOutlinedButton(
              buttonText: "Report $name",
              textColor: AppColor.blackColor,
              buttonColor: AppColor.backgroundColor,
              onPressed: () => Get.back(),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      );
    },
  );
}
