import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/BottomNavBar/view/bottom_nav_bar.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            TextWidget(
              text: "Welcome Olamide!",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 8,
            ),
            TextWidget(
              text:
                  "Your profile is highly visible! Complete it for even better matches.",
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 56,
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.backgroundColor,
                  border: Border.all(
                    width: 6,
                    color: AppColor.primaryColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade50,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            AppPrimaryButton(
              buttonText: "Show Potential Matches",
              onPressed: () {
                Get.to(() => BottomNavBar());
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppOutlinedButton(
              buttonText: "Complete Profile",
              onPressed: () {},
              textColor: AppColor.primaryColor,
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
