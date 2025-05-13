import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Filter/controller/filter_controller.dart';
import 'package:meet_singles/App/Filter/widget/interested_in_dialog.dart';
import 'package:meet_singles/App/Filter/widget/location_dialog.dart';

import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

class BasicFilter extends StatefulWidget {
  const BasicFilter({super.key});

  @override
  State<BasicFilter> createState() => _BasicFilterState();
}

class _BasicFilterState extends State<BasicFilter> {
  final FilterController filterController =
      Get.find<FilterController>(); // Use Get.find

  RangeValues ageRange = const RangeValues(18, 25);
  double distance = 150;
  bool expandSearch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Interested In
        _sectionTitle("Interested in",
            "Select your preferred gender to find the right matches."),
        GestureDetector(
          onTap: () {
            showInterestedInDialog(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => TextWidget(
                      // Use Obx to update the UI
                      text: filterController.interestedIn.value,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                Row(
                  children: [
                    TextWidget(
                      text: "Change",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(width: 4),
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
        ),

        // Age Filter
        _sectionTitle(
            "Age", "Adjust your age preference to find the right matches."),
        _ageRangeSlider(),

        // Location Filter
        _sectionTitle(
            "Location", "Modify your location to discover matches worldwide."),
        GestureDetector(
          onTap: () {
            showLocationDialog(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => TextWidget(
                      // Use Obx to update the UI
                      text: filterController.locationValue.value,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                Row(
                  children: [
                    TextWidget(
                      text: "Change",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryColor,
                    ),
                    const SizedBox(width: 4),
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
        ),

        // Maximum Distance
        _sectionTitle("Maximum Distance",
            "Adjust your distance settings to find matches near or far."),
        _distanceSlider(),
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

  // Age Range Slider
  Widget _ageRangeSlider() {
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
                  text: "Age",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                TextWidget(
                  text: "${ageRange.start.toInt()} to ${ageRange.end.toInt()}",
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
            child: RangeSlider(
              values: ageRange,
              min: 18,
              max: 60,
              divisions: 60 - 18,
              onChanged: (RangeValues values) {
                setState(() {
                  ageRange = values;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  // Distance Slider
  Widget _distanceSlider() {
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
                  fontWeight: FontWeight.w500,
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
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: const TextWidget(
                    text:
                        "Expand your search to see profiles from farther away when you run out.",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
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
        ],
      ),
    );
  }
}
