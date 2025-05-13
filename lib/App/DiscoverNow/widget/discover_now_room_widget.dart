import 'package:flutter/material.dart';
import 'package:meet_singles/App/Dashboard/widget/cancel_match_dialog.dart';
import 'package:meet_singles/App/Dashboard/widget/dashboard_profile_arrow.dart';
import 'package:meet_singles/App/Dashboard/widget/no_profiles_dialog.dart';
import 'package:meet_singles/App/Dashboard/widget/super_like_dialog.dart';

import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import '../../../utils/images.dart';
import '../../../widget/textwidget.dart';
import '../../Dashboard/widget/icon_circular_button.dart';
import '../../Dashboard/widget/icon_rectangular_button.dart';

class DiscoverNowRoomWidget extends StatelessWidget {
  const DiscoverNowRoomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            // Profile Card
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    // Profile Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        AppImages
                            .matchesImage, // Replace with actual profile image
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Overlay Gradient
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),

                    // Profile Details
                    Positioned(
                      bottom: 64,
                      left: 16,
                      right: 16,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Name and Verification
                              Row(
                                children: [
                                  TextWidget(
                                    text: "Jumoke, 27",
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

                              // Job & Location
                              Row(
                                children: [
                                  Icon(Icons.work,
                                      color: Colors.white, size: 16),
                                  SizedBox(width: 5),
                                  TextWidget(
                                    text: "Veterinarian at LASUTH",
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ],
                              ),

                              SizedBox(height: 5),

                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Colors.white, size: 16),
                                  SizedBox(width: 5),
                                  TextWidget(
                                    text: "23km away",
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          DashboardProfileArrow(),
                          // Container(
                          //   height: 42,
                          //   width: 42,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     border:
                          //         Border.all(color: AppColor.whiteColor),
                          //     color: AppColor.whiteColor.withOpacity(0.2),
                          //   ),
                          //   child: Icon(
                          //     Icons.arrow_upward,
                          //     color: AppColor.whiteColor,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              height: 48,
              color: AppColor.backgroundColor,
            )
          ],
        ),
        // Action Buttons
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
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
                  // Get.to(()=> MatchedScreen());
                  showSuperLikeDialog(context);
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
                  onPressed: () {
                    showNoProfilesDialog(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
