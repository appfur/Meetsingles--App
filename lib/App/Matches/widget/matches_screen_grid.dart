import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import '../../Dashboard/widget/icon_rectangular_button.dart';

class MatchesScreenGrid extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String filterType;

  const MatchesScreenGrid({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.filterType,
  });

  @override
  Widget build(BuildContext context) {
    return // Liked Profiles Grid
        Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.72, // Adjust aspect ratio for image cards
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // Profile card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.backgroundColor,
                ),
                child: Stack(
                  children: [
                    // Profile Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      // Image.network(
                      //   imageUrl,
                      //   width: double.infinity,
                      //   height: double.infinity,
                      //   fit: BoxFit.cover,
                      // ),
                    ),

                    // Gradient Overlay
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.9),
                              Colors.black.withOpacity(0.9),
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    // Ai Suggestions percentage
                    filterType == "Liked Me"
                        ? const SizedBox()
                        : Positioned(
                            top: 16,
                            right: 8,
                            child: Container(
                              // height: 21,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColor.whiteColor.withOpacity(0.5),
                              ),
                              child: Center(
                                child: TextWidget(
                                  text: "85% Match",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                    // Name and Actions
                    Positioned(
                      bottom: 16,
                      left: 8,
                      right: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TextWidget(
                                text: name,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.verified,
                                color: AppColor.whiteColor,
                                size: 20,
                              )
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Like & Dislike Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: IconRectangularButton(
                                  backgroundColor: AppColor.redColor,
                                  imagePath: AppSvgIcons.cancelIcon,
                                  iconColor: AppColor.whiteColor,
                                  onPressed: () {},
                                  height: 28.h,
                                  imageScale: 8,
                                  radius: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: IconRectangularButton(
                                  backgroundColor: AppColor.primaryColor,
                                  imagePath: AppSvgIcons.likeIcon,
                                  iconColor: AppColor.whiteColor,
                                  onPressed: () {},
                                  height: 28.h,
                                  imageScale: 8,
                                  radius: 12,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Background Blur
              filterType == "Liked Me"
                  ? const SizedBox()
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 15, sigmaY: 15), // Blur effect
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white
                                .withOpacity(0.1), // Transparent white
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}
