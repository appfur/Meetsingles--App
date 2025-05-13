import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class InterestBottomSheet extends StatefulWidget {
  const InterestBottomSheet({super.key});

  @override
  State<InterestBottomSheet> createState() => _InterestBottomSheetState();
}

class _InterestBottomSheetState extends State<InterestBottomSheet> {
  final List<Map<String, dynamic>> interests = [
    {'icon': Icons.pool, 'label': 'Swimming'},
    {'icon': Icons.restaurant, 'label': 'Cooking'},
    {'icon': Icons.earbuds, 'label': 'Singing'},
    {'icon': Icons.brush, 'label': 'Painting'},
    {'icon': Icons.photo_camera, 'label': 'Photography'},
    {'icon': Icons.menu_book, 'label': 'Reading'},
    {'icon': Icons.music_note, 'label': 'Music'},
    {'icon': Icons.signal_cellular_alt, 'label': 'Ecommerce'},
    {'icon': Icons.cases, 'label': 'Traveling'},
    {'icon': Icons.gamepad, 'label': 'Gaming'},
    {'icon': Icons.home, 'label': 'Architecture'},
    {'icon': Icons.wifi, 'label': 'Internet'},
    {'icon': Icons.shopping_cart, 'label': 'Shopping'},
    {'icon': Icons.movie, 'label': 'Movie'},
    {'icon': Icons.bar_chart, 'label': 'Investment'},
    {'icon': Icons.sports_soccer, 'label': 'Football'},
    {'icon': Icons.sports_basketball, 'label': 'Basketball'},
    {'icon': Icons.nature_people, 'label': 'Nature'},
    {'icon': Icons.sports_gymnastics, 'label': 'Meditation'},
    {'icon': Icons.food_bank, 'label': 'Foodie'},
    {'icon': Icons.notes, 'label': 'Blogging'},
    {'icon': Icons.sports_gymnastics, 'label': 'Yoga'},
    {'icon': Icons.run_circle_outlined, 'label': 'Running'},
    {'icon': Icons.pedal_bike, 'label': 'Cycling'},
    {'icon': Icons.coffee, 'label': 'Coffee'},
    {'icon': Icons.woman_rounded, 'label': 'Fashion'},
    {'icon': Icons.sports_volleyball, 'label': 'Volleyball'},
    {'icon': Icons.golf_course, 'label': 'Golf'},
    {'icon': Icons.sports_tennis, 'label': 'Tennis'},
    {'icon': Icons.airplay, 'label': 'Sci-fi'},
    {'icon': Icons.bed, 'label': 'Sleeping'},
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
            children: interests.map((interest) {
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

void showInterestBottomSheet(
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
          InterestBottomSheet(),
        ],
      );
    },
  );
}
