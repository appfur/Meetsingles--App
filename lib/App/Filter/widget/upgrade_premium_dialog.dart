import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

void showUpgradePremiumDialog(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
          children: [
            Image.asset(
              AppIcons.premiumCrown,
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Upgrade to Premium",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text:
                  "Unlock the ability to share pictures and contacts by upgrading to a premium account.",
              fontWeight: FontWeight.w400,
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
          ],
        ),
      );
    },
  );
}
