import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/contact_us_bottom_sheet.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/delete_account_dialog.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/logout_dialog.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/rate_app_dialog.dart';
import 'package:meet_singles/utils/icons.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: "Actions",
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
              GestureDetector(
                onTap: () => showRateAppDialog(context),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: AppColor.yellowColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextWidget(
                        text: "Rate App",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => showContactUsBottomSheet(context),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_in_talk,
                        color: AppColor.greenColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextWidget(
                        text: "Contact us",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => showLogoutDialog(context),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgIcons.logoutIcon,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextWidget(
                        text: "Log out",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColor.primaryColor.shade50,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => showDeleteAccountDialog(context),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppSvgIcons.deleteIcon,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextWidget(
                        text: "Delete account",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
