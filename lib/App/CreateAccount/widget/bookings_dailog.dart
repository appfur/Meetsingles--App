import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account4.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

void showAgeDialog(
  BuildContext context,
  String age,
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
          children: [
            Image.asset(
              AppIcons.userCheck,
              scale: 4,
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Are you $age years old?",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "Yes, I'm $age years old",
              onPressed: () {
                Get.to(() => CreateAccount4());
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppOutlinedButton(
              buttonText: "No, Reselect birthday",
              textColor: AppColor.primaryColor,
              onPressed: () => Get.back(),
            ),
          ],
        ),
      );
    },
  );
}
