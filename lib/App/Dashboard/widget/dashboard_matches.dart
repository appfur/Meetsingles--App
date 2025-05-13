import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Dashboard/controller/dashboard_controller.dart';
import 'package:meet_singles/App/Dashboard/widget/dashboard_profile_arrow.dart';
import 'package:meet_singles/App/Dashboard/widget/no_profiles_dialog.dart';
import 'package:meet_singles/App/Dashboard/widget/super_like_dialog.dart';
import 'package:meet_singles/App/Dashboard/widget/tinder_card_swipe.dart';

import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import '../../../widget/textwidget.dart';
import 'icon_circular_button.dart';
import 'icon_rectangular_button.dart';
import 'profile_media_viewer.dart';

class DashboardMatches extends StatefulWidget {
  const DashboardMatches({super.key});

  @override
  State<DashboardMatches> createState() => _DashboardMatchesState();
}

class _DashboardMatchesState extends State<DashboardMatches>
    with SingleTickerProviderStateMixin {
  final dashboardController = Get.find<DashboardController>();
  final CardSwiperController swiperController = CardSwiperController();

  late List<PageController> _pageControllers;

  // final PageController pageController = PageController();
  bool showHeartAnimation = false;
  bool showCancelAnimation = false;

  late AnimationController heartController;
  late Animation<double> scaleAnimation;
  double _dragStartX = 0;
  // int mediaLength = 0;

  final List<Map<String, dynamic>> interests = [
    {'icon': Icons.wine_bar, 'label': 'Rarely'},
    {'icon': Icons.sports_gymnastics, 'label': 'Gym'},
    {'icon': Icons.child_friendly, 'label': 'Wants kids'},
    {'icon': Icons.smoking_rooms, 'label': 'No'},
  ];

  @override
  void initState() {
    super.initState();
    // mediaLength = ;
    _pageControllers = List.generate(
      dashboardController.profileDetails.length,
      (_) => PageController(),
    );

    heartController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: heartController, curve: Curves.easeOutBack),
    );

    heartController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 300), () {
          setState(() {
            showHeartAnimation = false;
            showCancelAnimation = false;
          });
          heartController.reset();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          // Profile Card
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    // Scrollable Media
                    TinderCardStack(
                      cards: dashboardController.profileDetails.map((profiles) {
                        final int index = dashboardController.profileDetails
                            .indexOf(profiles);
                        final int mediaLength = profiles["mediaList"].length;
                        _pageControllers[index] = PageController(
                            initialPage: mediaLength > 1 ? 0 : 1);
                        return Stack(
                          children: [
                            PageView.builder(
                              controller: _pageControllers[index],
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: profiles["mediaList"].length,
                              onPageChanged: (mediaIndex) {
                                dashboardController.currentPage.value =
                                    mediaIndex;
                              },
                              itemBuilder: (context, mediaIndex) {
                                final String media =
                                    profiles["mediaList"][mediaIndex];

                                if (media.endsWith(".mp4")) {
                                  return ProfileMediaViewer(mediaUrls: media);
                                } else {
                                  return Image.asset(
                                    media,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  );
                                }
                              },
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              right: 16,
                              child: Obx(
                                () => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                      profiles["mediaList"].length, (index) {
                                    return AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      // width: dashboardController.currentPage.value == index ? 12 : 8,
                                      width: (MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              64 -
                                              ((profiles["mediaList"].length) *
                                                  8)) /
                                          profiles["mediaList"].length,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(8),
                                        color: dashboardController
                                                    .currentPage.value ==
                                                index
                                            ? AppColor.whiteColor
                                            : AppColor.whiteColor
                                                .withOpacity(0.5),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),

                            // Left and right tap zones
                            Positioned.fill(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        final controller = _pageControllers[index];
                                        if (controller.page!.round() > 0) {
                                          dashboardController
                                              .currentPage.value -= 1;

                                          controller.previousPage(
                                            duration: const Duration(
                                                milliseconds: 600),
                                            curve: Curves.easeInOut,
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        final controller =
                                            _pageControllers[index];
                                        if (controller.page!.round() <
                                            mediaLength - 1) {
                                          dashboardController
                                              .currentPage.value += 1;

                                          controller.nextPage(
                                            duration: const Duration(
                                                milliseconds: 600),
                                            curve: Curves.easeInOut,
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Profile Details
                            Positioned(
                              bottom: 48,
                              left: 16,
                              right: 16,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          TextWidget(
                                            text:
                                                "${profiles["name"]}, ${profiles["age"]}",
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          SizedBox(width: 8),
                                          Icon(
                                            Icons.verified,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Wrap(
                                          spacing: 10,
                                          runSpacing: 10,
                                          children: interests.map((interest) {
                                            return Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 14,
                                                vertical: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    width: 0.5),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    interest['icon'],
                                                    size: 20,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(width: 6),
                                                  Text(
                                                    interest['label'],
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  DashboardProfileArrow(),
                                ],
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                      onSwipe: (index, direction) {
                        print("Swiped card $index to the $direction");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    heartController.dispose();
    for (var controller in _pageControllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
