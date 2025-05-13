import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class LifestyleHabitBottomSheet extends StatefulWidget {
  const LifestyleHabitBottomSheet({super.key});

  @override
  State<LifestyleHabitBottomSheet> createState() =>
      _LifestyleHabitBottomSheetState();
}

class _LifestyleHabitBottomSheetState extends State<LifestyleHabitBottomSheet> {
  final List<String> doYouDrink = [
    "I don't drink",
    "Rarely",
    "Socially",
    "Often",
    "Trying to quit",
  ];

  final List<String> doYouSmoke = [
    "I don't smoke",
    "Occassionaly",
    "Socially",
    "Regularly",
    "Trying to quit",
  ];

  final List<String> doYouExercise = [
    "Every day",
    "Often",
    "Sometimes",
    "Never",
  ];

  final List<String> doYouHavePets = [
    "Cat",
    "Dog",
    "Bird",
    "Don't want one",
    "Don't have, but love",
    "Want one",
    "Others"
  ];

  String selectedDrinkOption = '';
  String selectedSmokeOption = '';
  String selectedExerciseOption = '';
  String selectedPetsOption = '';

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
            "Lifestyle Habits",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Select your lifestyle & habits.",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
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
                text: "Do you drink?",
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
            children: doYouDrink.map((option) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDrinkOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedDrinkOption == option
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
                      color: selectedDrinkOption == option
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
                text: "Do you smoke?",
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
            children: doYouSmoke.map((option) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSmokeOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedSmokeOption == option
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
                      color: selectedSmokeOption == option
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
                Icons.sports_gymnastics,
                color: AppColor.primaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "Do you exercise?",
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
            children: doYouExercise.map((option) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedExerciseOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedExerciseOption == option
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
                      color: selectedExerciseOption == option
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
                Icons.pets,
                color: AppColor.primaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "Do you have any pets?",
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
            children: doYouHavePets.map((option) {
              // bool isSelected = selectedPetsOption.contains(option);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPetsOption = option;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedPetsOption == option
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
                      color: selectedPetsOption == option
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

void showLifestyleHabitBottomSheet(
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
          LifestyleHabitBottomSheet(),
        ],
      );
    },
  );
}
