import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/languages_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class LanguagesSection extends StatelessWidget {
  const LanguagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Languages",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            // TextWidget(
            //   text: "+5%",
            //   fontSize: 16,
            //   fontWeight: FontWeight.w600,
            //   color: AppColor.primaryColor,
            // ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () => showLanguagesBottomSheet(context),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "What language(s) do you speak?",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Select option",
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
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
