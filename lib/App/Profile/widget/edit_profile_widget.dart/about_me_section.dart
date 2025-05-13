import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/add_bio_bottom_sheet.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/add_religion_bottom_sheet.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/change_nationality_bottom_sheet.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "About me",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: "+30%",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Name & Age",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextWidget(
                    text: "Olamide, 24",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Gender",
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
                        text: "Male",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      // Row(
                      //   children: [
                      //     TextWidget(
                      //       text: "Change",
                      //       fontSize: 12,
                      //       fontWeight: FontWeight.w400,
                      //       color: AppColor.primaryColor,
                      //     ),
                      //     const SizedBox(
                      //       width: 4,
                      //     ),
                      //     Icon(
                      //       Icons.arrow_forward_ios,
                      //       size: 16,
                      //       color: AppColor.primaryColor,
                      //     )
                      //   ],
                      // ),
                    ],
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Email address",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextWidget(
                    text: "Olamide@gmail.com",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
              GestureDetector(
                onTap: () => showAddBioBottomSheet(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "My Bio",
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
                          text: "Add Bio",
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
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Location",
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
                        text: "Lagos, NG",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: "Change Location",
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
              GestureDetector(
                onTap: () => showAddReligionBottomSheet(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Religion or Spiritual beliefs",
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
                          text: "Select",
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
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Nationality",
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
                        text: "Nigerian",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      GestureDetector(
                        onTap: () => showChangeNationalityBottomSheet(context),
                        child: Row(
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
                      ),
                    ],
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Height",
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
                        text: "Add Height",
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
        )
      ],
    );
  }
}
