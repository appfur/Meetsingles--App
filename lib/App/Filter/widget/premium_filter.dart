import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Filter/widget/education_level_dialog.dart';
import 'package:meet_singles/App/Filter/widget/interest_filter.dart';
import 'package:meet_singles/App/Filter/widget/looking_for_container.dart';
import 'package:meet_singles/App/Filter/widget/religion_dialog.dart';

import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';
import '../controller/filter_controller.dart';

class PremiumFilter extends StatefulWidget {
  const PremiumFilter({super.key});

  @override
  State<PremiumFilter> createState() => _PremiumFilterState();
}

class _PremiumFilterState extends State<PremiumFilter> {
  final FilterController filterController = Get.find<FilterController>();
  RangeValues ageRange = const RangeValues(18, 25);
  double distance = 150;
  bool expandSearch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Height
        _sectionTitle("Height",
            "Adjust your height preference to find the best matches."),
        _heightSlider(),

        // Height
        _sectionTitle(
            "Looking For", "Filter profiles based on their intentions"),
        LookingForOptions(),
        // Education Level
        _sectionTitle("Education Level",
            "Select the highest level of education to filter profiles."),
        _infoBox(
            Obx(
              () => TextWidget(
                text: filterController.educationLevelValue.value,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ), onTap: () {
          // Handle location selection
          showEducationLevelDialog(context);
        }),

        // Religion
        _sectionTitle("Religion",
            "Select a religion to find profiles that align with your beliefs and values."),
        _infoBox(
            Obx(
              () => TextWidget(
                text: filterController.religionValue.value,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ), onTap: () {
          // Handle gender selection
          showReligionDialog(context);
        }),

        // Verified Profiles
        _sectionTitle("Verified Profiles",
            "Display only profiles that have been verified to ensure authenticity and trustworthiness."),
        _switchContainer("Show only verified profiles"),

        // Verified Profiles
        _sectionTitle("Shared Interests",
            "Let AI suggest matches based on your common interests and preferences."),
        _switchContainer("Enable AI-generated suggestions."),
        const SizedBox(
          height: 16,
        ),
        // Interests
        InterestFilter()
      ],
    );
  }

  // Section Title
  Widget _sectionTitle(String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: title,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: subTitle,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }

  // Information Box with "Change" Option
  Widget _infoBox(Widget text, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text,
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
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppColor.primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Distance Slider
  Widget _heightSlider() {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  text: "Range",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                TextWidget(
                  text: "${distance.toInt()}km",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: AppColor.whiteColor,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 15,
                elevation: 2,
              ),
              activeTrackColor: AppColor.primaryColor,
              inactiveTrackColor: AppColor.primaryColor.shade50,
            ),
            child: Slider(
              min: 100,
              max: 300,
              value: distance,
              onChanged: (val) {
                distance = val;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _switchContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Row(
          children: [
            Expanded(
              child: TextWidget(
                text: text,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 45,
              width: 50,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                  value: expandSearch,
                  activeColor: AppColor.whiteColor,
                  activeTrackColor: AppColor.primaryColor,
                  inactiveTrackColor: AppColor.primaryColor.shade100,
                  inactiveThumbColor: AppColor.whiteColor,
                  // Removing the focus/outline
                  focusColor: Colors.transparent,
                  trackOutlineColor:
                      WidgetStateProperty.all(Colors.transparent),
                  onChanged: (value) {
                    setState(() {
                      expandSearch = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
