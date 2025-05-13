import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Dashboard/view/welcome_screen.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';

class CreateAccount10 extends StatefulWidget {
  const CreateAccount10({super.key});

  @override
  State<CreateAccount10> createState() => _CreateAccount10State();
}

class _CreateAccount10State extends State<CreateAccount10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.shade50,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              TextWidget(
                text: "Upload your best photos",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: _photoContainer(
                      imagePath: AppImages.profileImage,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: _photoContainer(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: _photoContainer(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: _photoContainer(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: _photoContainer(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: _photoContainer(),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColor.blueColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextWidget(
                        text: "i",
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextWidget(
                      text:
                          "Adding at least two photos boosts your chances of getting liked!",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greyColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: AppPrimaryButton(
          buttonText: "Next",
          onPressed: () {
            Get.to(() => WelcomeScreen());
          },
        ),
      ),
    );
  }

  Widget _photoContainer({
    String? imagePath,
  }) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColor.primaryColor.shade50,
        image: imagePath != null
            ? DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.fill,
              )
            : null,
      ),
      child: imagePath != null
          ? Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                radius: 12,
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColor.redColor,
                ),
              ),
            )
          : Center(
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                radius: 12,
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
    );
  }
}
