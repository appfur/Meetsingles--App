import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/icon_text_button.dart';

class SuperLikeScreen extends StatelessWidget {
  const SuperLikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.close,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              "Make you move with a Super Like",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Show them you're truly interested by sending a Super Like — it boosts your chances of finding a match!",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  width: double.infinity,
                  // height: 500,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    // borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.matchedFemaleImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 32,
            ),
            AppIconTextButton(
              buttonText: "Send Super Like",
              icon: Image.asset(
                AppIcons.heartShine,
                color: AppColor.whiteColor,
                scale: 6,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            AppIconTextButton(
              buttonText: "Keep Swipping",
              textColor: AppColor.primaryColor,
              buttonColor: AppColor.backgroundColor,
              icon: Icon(
                Icons.swipe,
                size: 24,
                color: AppColor.primaryColor,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
