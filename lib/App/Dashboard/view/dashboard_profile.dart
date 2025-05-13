import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../utils/icons.dart';
import '../../Matches/view/matched_screen.dart';
import '../widget/cancel_match_dialog.dart';
import '../widget/icon_circular_button.dart';
import '../widget/icon_rectangular_button.dart';

class DashboardProfile extends StatelessWidget {
  const DashboardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height / 1.5,
                  pinned: true,
                  floating: false,
                  centerTitle: true,
                  backgroundColor: AppColor.whiteColor,
                  surfaceTintColor: AppColor.whiteColor,
                  leading: GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      color: innerBoxIsScrolled
                          ? AppColor.blackColor
                          : Colors.white,
                    ),
                  ),
                  actions: innerBoxIsScrolled
                      ? [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.more_horiz,
                              size: 32,
                              color: AppColor.blackColor,
                            ),
                          ),
                        ]
                      : [],
                  flexibleSpace: FlexibleSpaceBar(
                    title: innerBoxIsScrolled
                        ? Row(
                            children: [
                              TextWidget(
                                text: "Jumoke, 27",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.verified,
                                color: AppColor.primaryColor,
                                size: 20,
                              ),
                            ],
                          )
                        : null,
                    background: Image.asset(
                      AppImages.matchesImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          TextWidget(
                            text: "Jumoke, 27",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.verified,
                            color: AppColor.primaryColor,
                            size: 24,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.more_horiz,
                        size: 32,
                        color: AppColor.primaryColor,
                      )
                    ],
                  ),
                  _sectionTitle("My Bio"),
                  _bioContainer(
                    "Adventurer at heart, foodie by nature. Looking for someone to share laughter, late-night talks, and spontaneous getaways with!",
                  ),
                  _sectionTitle("Looking for"),
                  _infoContainer(
                      _iconTextRow(Icons.circle, "A Committed Relationship")),
                  _sectionTitle("About me"),
                  _aboutMeSection(),
                  _sectionTitle("Work & Education"),
                  _workEducationSection(),
                  _sectionTitle("Lifestyles Habits"),
                  _lifestyleHabitsSection(),
                  _sectionTitle("Interests"),
                  _interestsSection(),
                  const SizedBox(
                    height: 120,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconRectangularButton(
                      backgroundColor: AppColor.redColor,
                      imagePath: AppSvgIcons.cancelIcon,
                      iconColor: AppColor.whiteColor,
                      onPressed: () => showCancelMatchDialog(context, "Jumoke"),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconCircularButton(
                    primaryColor: AppColor.primaryColor,
                    imagePath: AppSvgIcons.heartShine,
                      iconColor: AppColor.primaryColor,
                    onPressed: () {
                      Get.to(() => MatchedScreen());
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: IconRectangularButton(
                      backgroundColor: AppColor.primaryColor,
                      imagePath: AppSvgIcons.likeIcon,
                      iconColor: AppColor.whiteColor,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: TextWidget(
        text: title,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _bioContainer(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextWidget(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _infoContainer(Widget child) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }

  Widget _aboutMeSection() {
    return _infoContainer(Column(
      children: [
        _iconTextRow(
          Icons.location_on,
          "23km away",
        ),
        const SizedBox(
          height: 16,
        ),
        _iconTextRow(
          Icons.house,
          "Lives in Somolu",
        ),
        const SizedBox(
          height: 16,
        ),
        _iconTextRow(
          Icons.female,
          "Woman",
        ),
        const SizedBox(
          height: 16,
        ),
        _iconTextRow(
          Icons.height,
          "5ft 3in",
        ),
        const SizedBox(
          height: 16,
        ),
        _iconTextRow(
          Icons.church,
          "Christian",
        ),
      ],
    ));
  }

  Widget _workEducationSection() {
    return _infoContainer(
      Column(
        children: [
          _iconTextRow(
            Icons.school,
            "Bachelors Degree",
          ),
          const SizedBox(
            height: 16,
          ),
          _iconTextRow(
            Icons.menu_book,
            "Unilag",
          ),
          const SizedBox(
            height: 16,
          ),
          _iconTextRow(
            Icons.edit,
            "Mathematics",
          ),
        ],
      ),
    );
  }

  Widget _lifestyleHabitsSection() {
    return Wrap(
      runSpacing: 8,
      spacing: 8,
      children: [
        _iconTextRowSmallContainer(Icons.wine_bar, "Rarely"),
        _iconTextRowSmallContainer(Icons.sports_gymnastics, "Gym"),
        _iconTextRowSmallContainer(Icons.smoking_rooms, "No"),
        _iconTextRowSmallContainer(Icons.pets, "Dog"),
      ],
    );
  }

  Widget _interestsSection() {
    return Wrap(
      runSpacing: 8,
      spacing: 8,
      children: [
        _iconTextRowSmallContainer(Icons.child_friendly, "Want Kids"),
        _iconTextRowSmallContainer(Icons.child_care, "Don't have kids"),
        _iconTextRowSmallContainer(Icons.pool, "Swimming"),
        _iconTextRowSmallContainer(Icons.cookie, "Cooking"),
        _iconTextRowSmallContainer(Icons.brush, "Painting"),
        _iconTextRowSmallContainer(Icons.menu_book, "Reading"),
      ],
    );
  }

  Widget _iconTextRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: AppColor.primaryColor),
        const SizedBox(width: 16),
        TextWidget(text: text, fontSize: 16, fontWeight: FontWeight.w500),
      ],
    );
  }

  Widget _iconTextRowSmallContainer(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColor.primaryColor),
          const SizedBox(width: 8),
          TextWidget(text: text, fontSize: 16, fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
