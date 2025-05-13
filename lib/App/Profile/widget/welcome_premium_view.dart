import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Profile/controller/profile_controller.dart';

import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import '../../../widget/icon_text_button.dart';
import '../../../widget/textwidget.dart';

class WelcomePremiumView extends StatelessWidget {
  WelcomePremiumView({super.key});

  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                  Get.back();

                },
                child: Icon(
                  Icons.close,
                  size: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Welcome To Premium! 🎉",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            TextWidget(
              text:
                  "You've unlocked exclusive features to take your experience to the next level!",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            ListView.builder(
              itemCount: profileController.premiumAdvantages.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      index == profileController.premiumAdvantages.length - 1
                          ? const EdgeInsets.only(bottom: 0)
                          : const EdgeInsets.only(bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_rounded,
                        color: AppColor.primaryColor,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: profileController.premiumAdvantages[index]
                                  ["title"],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: profileController.premiumAdvantages[index]
                                  ["description"],
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextWidget(
              text: "🌟 Enjoy your Premium experience! 🌟",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            const Spacer(),
            AppIconTextButton(
              buttonText: "Start Exploring",
              icon: Image.asset(
                AppIcons.premiumCrownWhite,
                scale: 4,
              ),
              onPressed: () {
                // Get.to(() => WelcomePremiumView());
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
