import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Profile/controller/profile_controller.dart';
import 'package:meet_singles/App/Profile/widget/welcome_premium_view.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import 'package:meet_singles/widget/textwidget.dart';

class PremiumUpgradeScreen extends StatefulWidget {
  const PremiumUpgradeScreen({super.key});

  @override
  State<PremiumUpgradeScreen> createState() => _PremiumUpgradeScreenState();
}

class _PremiumUpgradeScreenState extends State<PremiumUpgradeScreen> {
  bool newMatches = false;
  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        centerTitle: true,
        title: TextWidget(
          text: "Premium Subscription",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              TextWidget(
                text: "Go Premium",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(
                text: "Unlock exclusive features and enhance your experience!",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                height: 116,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.primaryColor,
                      AppColor.primaryColor.shade100,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Monthly Subscription",
                        fontSize: 14,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                      TextWidget(
                        text: "S1.99",
                        fontSize: 32,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                  child: ListView.builder(
                      itemCount: profileController.premiumAdvantages.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
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
                                      text: profileController
                                          .premiumAdvantages[index]["title"],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    TextWidget(
                                      text: profileController
                                              .premiumAdvantages[index]
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
                      }),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              AppIconTextButton(
                buttonText: "Pay S1.99",
                icon: Image.asset(
                  AppIcons.premiumCrownWhite,
                  scale: 4,
                ),
                onPressed: () {
                  Get.to(() => WelcomePremiumView());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AppIconTextButton(
                buttonText: "Invite 8 Friends To Get Premium",
                buttonColor: AppColor.whiteColor,
                textColor: AppColor.primaryColor,
                icon: Image.asset(
                  AppIcons.shareCircleIcon,
                  scale: 4,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
