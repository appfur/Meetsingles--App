import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/interest_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Interest",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: "+5%",
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
          onTap: () => showInterestBottomSheet(context),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Select interest",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryColor,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColor.primaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
