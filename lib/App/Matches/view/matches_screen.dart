import 'package:flutter/material.dart';
import 'package:meet_singles/App/Matches/widget/No_Ai_likes_widget.dart';
import 'package:meet_singles/App/Matches/widget/matches_screen_grid.dart';
import 'package:meet_singles/App/Matches/widget/matches_tab.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/icon_text_button.dart';

import '../widget/no_likes_widget.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  String filterType = "Liked Me";
  bool hasLikes = true;
  bool hasAiLikes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  // Header
                  const Text(
                    "For You",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Discover people interested in you and smart matches tailored just for you.",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 24),

                  // Toggle Buttons
                  MatchesTab(
                    onTabChanged: (index) {
                      // Handle tab selection change
                      if (index == 0) {
                        filterType = "Liked Me";
                      } else {
                        filterType = "AI Suggestions";
                      }
                      print("Selected Tab: $index");
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 24),

                  // Sub-header
                  filterType == "Liked Me"
                      ? hasLikes
                          ? Center(
                              child: const Text(
                                "You’ve got 8 new likes! ❤️",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          : const SizedBox()
                      : hasAiLikes
                          ? Center(
                              child: const Text(
                                "You have 8 new AI-recommended matches✨",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          : const SizedBox(),
                  const SizedBox(height: 24),
                  filterType == "Liked Me"
                      ? hasLikes
                          ? MatchesScreenGrid(
                              name: "Jumoke, 27",
                              imageUrl: AppImages.matchedFemaleImage,
                              filterType: filterType,
                            )
                          : const NoLikesWidget()
                      : hasAiLikes
                          ? MatchesScreenGrid(
                              name: "Jumoke, 27",
                              imageUrl: AppImages.matchedFemaleImage,
                              filterType: filterType,
                            )
                          : const NoAiLikesWidget()
                ],
              ),
              filterType == "Liked Me"
                  ? const SizedBox()
                  : hasAiLikes
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AppIconTextButton(
                                buttonText: "Upgrade To Premium To See Likes",
                                icon: Image.asset(
                                  AppIcons.premiumCrownWhite,
                                  scale: 4,
                                ),
                                onPressed: () {},
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              AppIconTextButton(
                                buttonText: "Invite 15 friends  To get premium",
                                buttonColor: AppColor.whiteColor,
                                textColor: AppColor.primaryColor,
                                icon: Image.asset(
                                  AppIcons.premiumCrown,
                                  scale: 9,
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
