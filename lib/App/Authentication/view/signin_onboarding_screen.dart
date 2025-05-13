import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Authentication/view/phone_number_verification.dart';
import 'package:meet_singles/App/Authentication/widget/stacked_images.dart';
import 'package:meet_singles/App/BottomNavBar/view/bottom_nav_bar.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/icon_text_button.dart';

import '../../../widget/textwidget.dart';

class SigninOnboardingScreen extends StatelessWidget {
  const SigninOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor, // Light pink background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: StackedImagesWidget(),
                ),

                const SizedBox(height: 48),
                // const Spacer(),
                // Title Text
                Text(
                  "Blumdate",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: AppColor.primaryColor,
                  ),
                ),

                const SizedBox(height: 72),
                // const Spacer(),

                // Create Account Button
                AppIconTextButton(
                  buttonText: "Sign in with Google",
                  icon: SvgPicture.asset(
                    AppSvgIcons.googleIcon,
                    width: 22,
                    height: 22,
                  ),
                  onPressed: () {
                    Get.to(() => BottomNavBar());
                  },
                  textColor: AppColor.primaryColor.shade700,
                  buttonColor: AppColor.whiteColor,
                ),

                const SizedBox(height: 16),

                // Sign In Button
                AppIconTextButton(
                  buttonText: "Sign in with Phone Number",
                  icon: Icon(
                    Icons.call_rounded,
                    color: AppColor.whiteColor,
                  ),
                  onPressed: () {
                    Get.to(() => PhoneNumberVerification());
                  },
                ),

                const SizedBox(height: 16),

                // Terms and Policies Text
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    TextWidget(text: "By selecting "),
                    Text(
                      "'Create Account'",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1, // Default is 1.0
                      ),
                    ),
                    TextWidget(text: " or "),
                    Text(
                      "'Sign In'",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1, // Default is 1.0
                      ),
                    ),
                    TextWidget(text: ", you agree to our "),
                    Text(
                      "Terms of Service. ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1, // Default is 1.0
                      ),
                    ),
                    TextWidget(
                        text:
                            "Learn more about how we handle your data in our "),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1, // Default is 1.0
                      ),
                    ),
                    TextWidget(text: " and "),
                    Text(
                      "Cookies Policy.",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 1, // Default is 1.0
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
