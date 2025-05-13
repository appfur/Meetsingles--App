import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/utils/images.dart';

class StackedImagesWidget extends StatelessWidget {
  const StackedImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300, // Adjust height as needed
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                _buildImage(
                    AppImages.onboardingImage1, 140, 240, -.04), // Left image
                const Spacer(),
                _buildImage(
                    AppImages.onboardingImage3, 140, 240, .04), // Right image
              ],
            ),
            _buildImage(
              AppImages.onboardingImage2,
              154,
              250,
              0,
            ), // Center image
            // Heart Icon
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppSvgIcons.likeIcon,
                  width: 28,
                  height: 28,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(
    String imagePath,
    double width,
    double height,
    double alpha,
  ) {
    return Container(
      width: width, // Adjust size as needed
      height: height,
      transform: Matrix4.skewX(alpha),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2), // White border
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
