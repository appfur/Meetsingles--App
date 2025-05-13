import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Dashboard/view/super_like_screen.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showSuperLikeDialog(
  BuildContext context,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppIcons.heartShine,
              scale: 2,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Super Likes Are Premium",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Upgrade to Premium to send Super Likes with a message and get noticed faster.",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            AppIconTextButton(
              buttonText: "Upgrade to Premium",
              icon: Image.asset(
                AppIcons.premiumCrownWhite,
                scale: 4,
              ),
              onPressed: () {
                Get.back();
                Get.to(() => SuperLikeScreen());
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppIconTextButton(
              buttonText: "Watch ad now to get 1 free super likes",
              icon: Icon(
                Icons.videocam,
                color: AppColor.whiteColor,
              ),
              buttonColor: AppColor.yellowColor,
              textColor: AppColor.whiteColor,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            AppOutlinedButton(
              buttonText: "Not Now",
              textColor: AppColor.primaryColor,
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
