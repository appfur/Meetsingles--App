import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';

class FilterTab extends StatefulWidget {
  final Function(int) onTabChanged;

  const FilterTab({super.key, required this.onTabChanged});

  @override
  State<FilterTab> createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _tabButton("Basic Filters", isSelected: selectedTab == 0, onTap: () {
            setState(() {
              selectedTab = 0;
            });
            widget.onTabChanged(0);
          }),
          _tabButton(
            "Premium Filters",
            isSelected: selectedTab == 1,
            onTap: () {
              setState(() {
                selectedTab = 1;
              });
              widget.onTabChanged(1);
            },
            icon: Icons.workspace_premium_rounded,
          ),
        ],
      ),
    );
  }

  Widget _tabButton(String text,
      {required bool isSelected, required VoidCallback onTap, IconData? icon}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: 16,
                  color: isSelected
                      ? Colors.white
                      : AppColor.primaryColor.shade200,
                ),
              if (icon != null) const SizedBox(width: 6),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: isSelected
                      ? AppColor.whiteColor
                      : AppColor.primaryColor.shade200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
