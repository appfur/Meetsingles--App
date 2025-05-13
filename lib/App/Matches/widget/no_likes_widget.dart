import 'package:flutter/material.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/textwidget.dart';

class NoLikesWidget extends StatelessWidget {
  const NoLikesWidget({super.key});

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
            text: "No Likes Yet",
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
                  "Looks like no one has liked you yet. Keep swiping and engaging to get noticed!",
              textAlign: TextAlign.center,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          AppPrimaryButton(
            buttonText: "Keep Skiping",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
