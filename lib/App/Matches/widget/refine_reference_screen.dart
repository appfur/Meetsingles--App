import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Matches/controller/matches_controller.dart';
import 'package:meet_singles/App/Matches/widget/matches_education_level_dialog.dart';
import 'package:meet_singles/App/Matches/widget/matches_religion_dialog.dart';
import 'package:meet_singles/widget/app_botton.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';
import 'package:meet_singles/App/Filter/widget/interest_filter.dart';
import 'package:meet_singles/App/Filter/widget/looking_for_container.dart';

class RefineReferenceScreen extends StatefulWidget {
  const RefineReferenceScreen({super.key});

  @override
  State<RefineReferenceScreen> createState() => _RefineReferenceScreenState();
}

class _RefineReferenceScreenState extends State<RefineReferenceScreen> {
  final MatchesController matchesController = Get.find<MatchesController>();
  RangeValues ageRange = const RangeValues(18, 25);
  double distance = 150;
  bool expandSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: const TextWidget(
          text: "Refine References",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
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
                    text: matchesController.educationLevelValue.value,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ), onTap: () {
              // Handle location selection
              showMatchesEducationLevelDialog(context);
            }),

            // Religion
            _sectionTitle("Religion",
                "Select a religion to find profiles that align with your beliefs and values."),
            _infoBox(
                Obx(
                  () => TextWidget(
                    text: matchesController.religionValue.value,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ), onTap: () {
              // Handle gender selection
              showMatchesReligionDialog(context);
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: AppPrimaryButton(
          buttonText: "Done",
          onPressed: () {},
        ),
      ),
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

void showRefineReferenceScreen(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          RefineReferenceScreen(),
        ],
      );
    },
  );
}
