import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/add_education_level_bottom_sheet.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/add_institution_bottom_sheet.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/add_work_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class WorkEducationSection extends StatelessWidget {
  const WorkEducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Work & Education",
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
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => showAddWorkBottomSheet(context),
                child: Row(
                  children: [
                    Icon(
                      Icons.work,
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
                            text: "Work",
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
                                text: "Add Work",
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
              GestureDetector(
                onTap: () => showAddInstitutionBottomSheet(context),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_book,
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
                            text: "Educational Institution",
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
                                text: "Add Institution",
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
              GestureDetector(
                onTap: () => showAddEducationLevelBottomSheet(context),
                child: Row(
                  children: [
                    Icon(
                      Icons.school,
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
                            text: "Educational Level",
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
                                text: "Add Educational Level",
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
