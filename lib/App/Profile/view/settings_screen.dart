import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/actions_section.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/push_notification_section.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../controller/profile_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        centerTitle: true,
        title: TextWidget(
          text: "Settings",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              PushNotificationSection(),
              const SizedBox(
                height: 24,
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
                          text: "Read Receipt",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 45,
                          width: 50,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Switch(
                              value: profileController.readReceipt,
                              activeColor: AppColor.whiteColor,
                              activeTrackColor: AppColor.primaryColor,
                              inactiveTrackColor:
                                  AppColor.primaryColor.shade100,
                              inactiveThumbColor: AppColor.whiteColor,
                              // Removing the focus/outline
                              focusColor: Colors.transparent,
                              trackOutlineColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onChanged: (value) {
                                setState(() {
                                  profileController.readReceipt = value;
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
                          text: "show Active Status",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 45,
                          width: 50,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Switch(
                              value: profileController.showActiveStatus,
                              activeColor: AppColor.whiteColor,
                              activeTrackColor: AppColor.primaryColor,
                              inactiveTrackColor:
                                  AppColor.primaryColor.shade100,
                              inactiveThumbColor: AppColor.whiteColor,
                              // Removing the focus/outline
                              focusColor: Colors.transparent,
                              trackOutlineColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onChanged: (value) {
                                setState(() {
                                  profileController.showActiveStatus = value;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ActionsSection(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
