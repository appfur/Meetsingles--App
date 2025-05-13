import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/lifestyle_habit_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class LifestyleHabitsSection extends StatelessWidget {
  const LifestyleHabitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Lifestyle Habits",
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
          onTap: () => showLifestyleHabitBottomSheet(context),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.wine_bar,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "How often do you drink?",
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: AppColor.primaryColor.shade50,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.smoking_rooms_rounded,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "How often do you smoke?",
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: AppColor.primaryColor.shade50,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.sports_gymnastics,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Do you exercise?",
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: AppColor.primaryColor.shade50,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pets,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Do you have any pets?",
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
