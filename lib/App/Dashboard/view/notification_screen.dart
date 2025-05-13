import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';

import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: const TextWidget(
          text: "Notification",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColor.primaryColor,
                                ),
                                color: AppColor.backgroundColor,
                              ),
                              child: Image.asset(
                                AppIcons.heartHalf,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  text: "You matched with Sarah",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const TextWidget(
                                  text: "Start chatting now",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const TextWidget(
                              text: "Just now",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Icon(
                              Icons.circle,
                              size: 12,
                              color: AppColor.primaryColor,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Divider(
                      color: AppColor.backgroundColor,
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
