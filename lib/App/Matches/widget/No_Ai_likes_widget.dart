import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Matches/widget/refine_reference_screen.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/icon_text_button.dart';
import 'package:meet_singles/widget/textwidget.dart';

class NoAiLikesWidget extends StatelessWidget {
  const NoAiLikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          Image.asset(
            AppIcons.heartBroken,
            scale: 4,
          ),
          const TextWidget(
            text: "No AI Matches found Yet",
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TextWidget(
              text:
                  "We’re still learning about your preferences. Keep swiping, and we’ll show better matches soon",
              textAlign: TextAlign.center,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          AppIconTextButton(
            buttonText: "Refine References",
            icon: Icon(
              Icons.tune,
              color: AppColor.whiteColor,
            ),
            onPressed: () {
              Get.to(()=>RefineReferenceScreen());
            },
          )
        ],
      ),
    );
  }
}
