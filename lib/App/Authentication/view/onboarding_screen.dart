import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Authentication/view/phone_number_verification.dart';
import 'package:meet_singles/App/Authentication/view/signin_onboarding_screen.dart';
import 'package:meet_singles/App/Authentication/widget/stacked_images.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/textwidget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
                // const SizedBox(height: 16),
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
                AppPrimaryButton(
                  buttonText: "Create Account",
                  onPressed: () {
                    Get.to(() => PhoneNumberVerification());
                  },
                  textColor: AppColor.primaryColor.shade700,
                  buttonColor: AppColor.whiteColor,
                ),

                const SizedBox(height: 16),

                // Sign In Button
                AppPrimaryButton(
                  buttonText: "Sign In",
                  onPressed: () {
                    Get.to(() => SigninOnboardingScreen());
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

  // TextSpan _buildLinkText(String text) {
  //   return TextSpan(
  //     text: text,
  //     style: const TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
  //   );
  // }
}
