import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/relationship_goals_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class RelationshipGoalsSection extends StatelessWidget {
  const RelationshipGoalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(
              text: "Relationship Goals",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            // TextWidget(
            //   text: "+10%",
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
          onTap: () => showRelationshipGoalsBottomSheet(context),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: AppColor.primaryColor,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Looking for",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextWidget(
                      text: "A Committed Relationship",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    TextWidget(
                      text: "Change",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColor.primaryColor,
                    )
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
