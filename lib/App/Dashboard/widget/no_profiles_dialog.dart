import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Filter/view/filter_screen.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showNoProfilesDialog(
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
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "No more profiles left",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Looks like you've seen everyone in your current filters. Try adjusting your preferences for more matches",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            AppIconTextButton(
              buttonText: "Refine Preferences",
              icon: Image.asset(
                AppIcons.filterIcon,
                color: AppColor.whiteColor,
                scale: 4,
              ),
              onPressed: () {
                Get.back();
                Get.to(() => FilterScreen());
              },
            ),
          ],
        ),
      );
    },
  );
}
