import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/utils/icons.dart';
import 'package:meet_singles/widget/app_outline_button.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../widget/textwidget.dart';

class ContactUsBottomSheet extends StatefulWidget {
  const ContactUsBottomSheet({
    super.key,
  });
  @override
  State<ContactUsBottomSheet> createState() => _ContactUsBottomSheetState();
}

class _ContactUsBottomSheetState extends State<ContactUsBottomSheet> {
  // final ChatController chatController = Get.find<ChatController>();
  // String chatController.changeReportReasonValue(item) '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max, // Prevent full-screen expansion
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back,
              color: AppColor.blackColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TextWidget(
            text: "Contact us",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Select how you want to reach us",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppIcons.whatsAppIcon,
                scale: 4,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "WhatsApp",
                fontWeight: FontWeight.w600,
                color: AppColor.blackColor,
                fontSize: 14,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: AppColor.primaryColor.shade50,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppIcons.emailIcon,
                scale: 4,
              ),
              const SizedBox(
                width: 16,
              ),
              TextWidget(
                text: "Email",
                fontWeight: FontWeight.w600,
                color: AppColor.blackColor,
                fontSize: 14,
              ),
              const SizedBox(
                height: 4,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          AppOutlinedButton(
            buttonText: "Cancel",
            textColor: AppColor.primaryColor,
            onPressed: () {
              Get.back();
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

void showContactUsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          ContactUsBottomSheet(),
        ],
      );
    },
  );
}
