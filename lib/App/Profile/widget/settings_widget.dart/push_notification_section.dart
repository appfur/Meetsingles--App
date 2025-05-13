import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';
import '../../controller/profile_controller.dart';

class PushNotificationSection extends StatefulWidget {
  const PushNotificationSection({super.key});

  @override
  State<PushNotificationSection> createState() =>
      _PushNotificationSectionState();
}

class _PushNotificationSectionState extends State<PushNotificationSection> {
    final profileController = Get.put(ProfileController());


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: "Push Notification",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "New Matches",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 45,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: profileController.newMatches,
                        activeColor: AppColor.whiteColor,
                        activeTrackColor: AppColor.primaryColor,
                        inactiveTrackColor: AppColor.primaryColor.shade100,
                        inactiveThumbColor: AppColor.whiteColor,
                        // Removing the focus/outline
                        focusColor: Colors.transparent,
                        trackOutlineColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onChanged: (value) {
                          setState(() {
                            profileController.newMatches = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Messages",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 45,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: profileController.messages,
                        activeColor: AppColor.whiteColor,
                        activeTrackColor: AppColor.primaryColor,
                        inactiveTrackColor: AppColor.primaryColor.shade100,
                        inactiveThumbColor: AppColor.whiteColor,
                        // Removing the focus/outline
                        focusColor: Colors.transparent,
                        trackOutlineColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onChanged: (value) {
                          setState(() {
                            profileController.messages = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Super Likes",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 45,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: profileController.superLikes,
                        activeColor: AppColor.whiteColor,
                        activeTrackColor: AppColor.primaryColor,
                        inactiveTrackColor: AppColor.primaryColor.shade100,
                        inactiveThumbColor: AppColor.whiteColor,
                        // Removing the focus/outline
                        focusColor: Colors.transparent,
                        trackOutlineColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onChanged: (value) {
                          setState(() {
                            profileController.superLikes = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Offers & Promotions",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 45,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: profileController.offerPromotions,
                        activeColor: AppColor.whiteColor,
                        activeTrackColor: AppColor.primaryColor,
                        inactiveTrackColor: AppColor.primaryColor.shade100,
                        inactiveThumbColor: AppColor.whiteColor,
                        // Removing the focus/outline
                        focusColor: Colors.transparent,
                        trackOutlineColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onChanged: (value) {
                          setState(() {
                            profileController.offerPromotions = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
