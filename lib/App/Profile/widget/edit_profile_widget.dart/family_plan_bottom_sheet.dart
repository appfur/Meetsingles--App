import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class FamilyPlanBottomSheet extends StatefulWidget {
  const FamilyPlanBottomSheet({super.key});

  @override
  State<FamilyPlanBottomSheet> createState() => _FamilyPlanBottomSheetState();
}

class _FamilyPlanBottomSheetState extends State<FamilyPlanBottomSheet> {
  final List<String> doYouHaveKids = [
    "I have kids and want more",
    "I have kids and don't want more",
  ];

  final List<String> doYouWantKids = [
    "I want kids",
    "I don't want kids",
    "Not sure yet",
  ];

  String selectedHaveKidsOption = '';
  String selectedWantKidsOption = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
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
          const Text(
            "Family Plans",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Icon(
                Icons.wine_bar,
                color: AppColor.primaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "Do you have kids?",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: doYouHaveKids.map((option) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedHaveKidsOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedHaveKidsOption == option
                        ? AppColor.primaryColor
                        : AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 0.5,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: selectedHaveKidsOption == option
                          ? Colors.white
                          : Colors.black87,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          Divider(
            color: AppColor.primaryColor.shade50,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(
                Icons.smoking_rooms_rounded,
                color: AppColor.primaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "Do you want kids?",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: doYouWantKids.map((option) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedWantKidsOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedWantKidsOption == option
                        ? AppColor.primaryColor
                        : AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 0.5,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: selectedWantKidsOption == option
                          ? Colors.white
                          : Colors.black87,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 40,
          ),
          AppPrimaryButton(
            buttonText: "Done",
            buttonColor: AppColor.primaryColor,
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

void showFamilyPlanBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          FamilyPlanBottomSheet(),
        ],
      );
    },
  );
}
