import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class LanguagesBottomSheet extends StatefulWidget {
  const LanguagesBottomSheet({super.key});

  @override
  State<LanguagesBottomSheet> createState() => _LanguagesBottomSheetState();
}

class _LanguagesBottomSheetState extends State<LanguagesBottomSheet> {
  final List<Map<String, dynamic>> languages = [
    {'icon': Icons.language, 'label': 'English'},
    {'icon': Icons.language, 'label': 'Yoruba'},
    {'icon': Icons.language, 'label': 'Finnish'},
    {'icon': Icons.language, 'label': 'Igbo'},
    {'icon': Icons.language, 'label': 'Hausa'},
    {'icon': Icons.language, 'label': 'Spanish'},
    {'icon': Icons.language, 'label': 'French'},
    {'icon': Icons.language, 'label': 'German'},
    {'icon': Icons.language, 'label': 'Chinese'},
  ];

  final List<String> selectedInterests = [];

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
            "Interests",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text:
                "Let everyone know what you are passionate about by adding up to 5 interest to your profile",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: languages.map((interest) {
              bool isSelected = selectedInterests.contains(interest['label']);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selectedInterests.remove(interest['label']);
                    } else {
                      selectedInterests.add(interest['label']);
                    }
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColor.primaryColor
                        : AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        interest['icon'],
                        size: 20,
                        color:
                            isSelected ? Colors.white : AppColor.primaryColor,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        interest['label'],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          const SizedBox(
            height: 32,
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

void showLanguagesBottomSheet(
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
          LanguagesBottomSheet(),
        ],
      );
    },
  );
}
