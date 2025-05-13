import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';

class MatchesTab extends StatefulWidget {
  final Function(int) onTabChanged;

  const MatchesTab({super.key, required this.onTabChanged});

  @override
  State<MatchesTab> createState() => _MatchesTabState();
}

class _MatchesTabState extends State<MatchesTab> {
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
          _tabButton(
            "Liked Me",
            isSelected: selectedTab == 0,
            onTap: () {
              setState(() {
                selectedTab = 0;
              });
              widget.onTabChanged(0);
            },
            icon: AppSvgIcons.likeIcon,
          ),
          _tabButton(
            "AI Suggestions",
            isSelected: selectedTab == 1,
            onTap: () {
              setState(() {
                selectedTab = 1;
              });
              widget.onTabChanged(1);
            },
            icon: AppSvgIcons.starShineIcon,
          ),
        ],
      ),
    );
  }

  Widget _tabButton(String text,
      {required bool isSelected,
      required VoidCallback onTap,
      required String icon}) {
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
              SvgPicture.asset(
                icon,
                
                color: isSelected ? AppColor.whiteColor : AppColor.primaryColor,
              ),
              const SizedBox(width: 6),
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
