import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Filter/view/filter_screen.dart';
import 'package:meet_singles/App/Dashboard/view/notification_screen.dart';
import 'package:meet_singles/App/Dashboard/widget/dashboard_matches.dart';
import 'package:meet_singles/utils/icons.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/textwidget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColor.primaryColor.shade200,
              // child: ,
            ),
          ),
          title: TextWidget(
            text: "Hi Olamide!",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          actions: [
            _actionButton(
                Icon(
                  Icons.refresh,
                  size: 24,
                  color: AppColor.primaryColor,
                ),
                () {}),
            const SizedBox(
              width: 8,
            ),
            _actionButton(
              SvgPicture.asset(
                AppSvgIcons.tuneIcon,
                width: 16,
                height: 20,
                color: AppColor.primaryColor,
              ),
              () {
                Get.to(() => FilterScreen());
              },
            ),
            const SizedBox(
              width: 8,
            ),
            _actionButton(
                Icon(
                  CupertinoIcons.bell_solid,
                  size: 24,
                  color: AppColor.primaryColor,
                ), () {
              Get.to(() => NotificationScreen());
            }),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: DashboardMatches()
            // ProfileScrollWidget(),
            // DashboardScanning(),
            ),
      ),
    );
  }

  Widget _actionButton(
    Widget icon,
    Function()? onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColor.primaryColor,
          ),
          color: AppColor.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
      ),
    );
  }
}
