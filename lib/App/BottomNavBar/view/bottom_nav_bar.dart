import 'package:flutter/material.dart';
import 'package:meet_singles/App/Chat/view/chat_list_screen.dart';
import 'package:meet_singles/App/Dashboard/view/dashboard_screen.dart';
import 'package:meet_singles/App/DiscoverNow/view/discover_now_screen.dart';
import 'package:meet_singles/App/Matches/view/matches_screen.dart';
import 'package:meet_singles/App/Profile/view/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/utils/icons.dart';
import '../../../config/theme/app_color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    this.index,
  });
  final int? index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  late List screens;

  onClick(int currentIndex) {
    setState(() {
      selectedIndex = currentIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    screens = [
      const DashboardScreen(),
      const MatchesScreen(),
      DiscoverNowScreen(),
      ChatListScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.primaryColor.shade200,
          onTap: (int currentIndex) {
            setState(() {
              selectedIndex = currentIndex;
            });
          },
          currentIndex: widget.index ?? selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgIcons.homeIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor.shade200,
              ),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.homeIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgIcons.likeIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor.shade200,
              ),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.likeIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgIcons.discoverIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor.shade200,
              ),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.discoverIcon,
                width: 28,
                height: 28,
                color: AppColor.primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgIcons.chatIcon,
                width: 30,
                height: 30,
                color: AppColor.primaryColor.shade200,
              ),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.chatIcon,
                width: 30,
                height: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgIcons.profileIcon,
                width: 30,
                height: 30,
                color: AppColor.primaryColor.shade200,
              ),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.profileIcon,
                width: 30,
                height: 30,
                color: AppColor.primaryColor,
              ),
              label: "",
            ),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
