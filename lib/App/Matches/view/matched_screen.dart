import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import 'package:meet_singles/widget/textwidget.dart';

class MatchedScreen extends StatelessWidget {
  const MatchedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Transform.rotate(
                            angle: -0.2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                AppImages
                                    .matchedFemaleImage, // Replace with actual image
                                width: 160.w,
                                height: 200.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 102,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 118.w,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 118.w,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          Transform.rotate(
                            angle: 0.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                AppImages
                                    .matchedMaleImage, // Replace with actual image
                                width: 160.w,
                                height: 200.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      AppIcons.heartPink,
                      scale: 4,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const TextWidget(
                text: "You Matched!",
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const TextWidget(
                  text:
                      "You and Jumoke like each other! Send a message to start chatting.",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              AppIconTextButton(
                buttonText: "Send A Message",
                icon: Icon(
                  Icons.waving_hand_rounded,
                  color: AppColor.whiteColor,
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              AppIconTextButton(
                buttonText: "Keep Swipping",
                textColor: AppColor.primaryColor,
                buttonColor: AppColor.whiteColor,
                icon: Icon(
                  Icons.swipe,
                  size: 24,
                  color: AppColor.primaryColor,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
