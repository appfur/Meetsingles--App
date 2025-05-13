import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/App/Matches/controller/matches_controller.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class MatchesEducationLevelDialog extends StatefulWidget {
  const MatchesEducationLevelDialog({super.key});

  @override
  State<MatchesEducationLevelDialog> createState() => _MatchesEducationLevelDialogState();
}

class _MatchesEducationLevelDialogState extends State<MatchesEducationLevelDialog> {
  final MatchesController matchesController = Get.find<MatchesController>();
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back,
              color: AppColor.blackColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TextWidget(
            text: "Education Level",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Select the level of education to filter profiles.",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "Any Level",
                  onTap: () {
                    selectedItem = "Any Level";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SelectableContainer(
                  text: "Bachelor degree",
                  onTap: () {
                    selectedItem = "Bachelor degree";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "At Uni",
                  onTap: () {
                    selectedItem = "At Uni";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SelectableContainer(
                  text: "High School",
                  onTap: () {
                    selectedItem = "High School";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "Phd",
                  onTap: () {
                    selectedItem = "Phd";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SelectableContainer(
                  text: "Master degree",
                  onTap: () {
                    selectedItem = "Master degree";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Done",
            buttonColor: selectedItem.isEmpty
                ? AppColor.primaryColor.shade100
                : AppColor.primaryColor,
            onPressed: () {
              matchesController.changeEducationLevelValue(selectedItem);
              Get.back();
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

void showMatchesEducationLevelDialog(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return MatchesEducationLevelDialog();
    },
  );
}
