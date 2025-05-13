import 'package:flutter/material.dart';

import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

class InterestFilter extends StatefulWidget {
  const InterestFilter({super.key});

  @override
  State<InterestFilter> createState() => _InterestFilterState();
}

class _InterestFilterState extends State<InterestFilter> {
  final List<Map<String, dynamic>> interests = [
    {'icon': Icons.wine_bar, 'label': 'Rarely'},
    {'icon': Icons.sports_gymnastics, 'label': 'Gym'},
    {'icon': Icons.child_friendly, 'label': 'Wants kids'},
    {'icon': Icons.smoking_rooms, 'label': 'No'},
    {'icon': Icons.pets, 'label': 'Dog & Cat'},
    {'icon': Icons.pool, 'label': 'Swimming'},
    {'icon': Icons.child_care, 'label': 'Don’t have kids'},
    {'icon': Icons.restaurant, 'label': 'Cooking'},
    {'icon': Icons.brush, 'label': 'Painting'},
    {'icon': Icons.menu_book, 'label': 'Reading'},
  ];

  final List<String> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filter by your interests",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
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
                          color: isSelected ? Colors.white : Colors.black87,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: AppColor.blueColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: TextWidget(
                      text: "i",
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    "AI will suggest profiles who share at least one of your selected interests. Click on an interest to select it.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
