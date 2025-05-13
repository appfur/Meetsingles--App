import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Profile/view/edit_profile_screen.dart';
import 'package:meet_singles/App/Profile/view/invite_friends_screen.dart';
import 'package:meet_singles/App/Profile/view/premium_upgrade_screen.dart';
import 'package:meet_singles/App/Profile/view/settings_screen.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/textwidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final double profileCompletion = 0.2; // 20% completion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const TextWidget(
          text: "Profile",
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        toolbarHeight: 75,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: AppColor.primaryColor,
              size: 30,
            ),
            onPressed: () {
              Get.to(() => SettingsScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),

            // Profile Picture with Progress
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 120.w,
                  height: 120.w,
                  child: CircularProgressIndicator(
                    value: profileCompletion,
                    strokeWidth: 6,
                    backgroundColor: AppColor.whiteColor,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.purple),
                  ),
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage:
                      AssetImage(AppImages.profileImage), // Use uploaded image
                ),
                // Profile Completion Text
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 80,
                    height: 36,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: const TextWidget(
                        text: "20%",
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Name & Verified Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Olamide",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.verified,
                  color: AppColor.primaryColor,
                  size: 22,
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Complete Profile Button
            AppPrimaryButton(
              buttonText: "Complete profile",
              buttonColor: AppColor.whiteColor,
              textColor: AppColor.primaryColor,
              buttonWidth: 180,
              buttonHeight: 48,
              onPressed: () {
                Get.to(() => EditProfileScreen());
              },
            ),

            const SizedBox(height: 24),

            // Upgrade & Invite Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: profileCard(),
            ),
          ],
        ),
      ),
    );
  }

  // Profile Feature Card Widget
  Widget profileCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(() => PremiumUpgradeScreen()),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppSvgIcons.crownIcon,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upgrade to Premium",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Discover the exclusive perks of a Premium membership.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Divider(
            color: AppColor.primaryColor.shade50,
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () => Get.to(() => InviteFriendsScreen()),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppSvgIcons.shareCircleIcon,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Invite Friends",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(
                        "Refer 8 friends and unlock 1 week of Premium access for free!",
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
