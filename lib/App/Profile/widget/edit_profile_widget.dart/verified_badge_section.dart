import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Profile/view/selfie_verification.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class VerifiedBadge extends StatelessWidget {
  const VerifiedBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Verified bagde",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: "+10%",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () => Get.to(() => SelfieVerification()),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.verified,
                  color: AppColor.greenColor,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Become a verified user",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextWidget(
                        text:
                            "Pass a selfie check and claim your verified badge",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
