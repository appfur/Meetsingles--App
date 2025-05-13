import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/widget/enter_phone_number_bottom_sheet.dart';
import 'package:meet_singles/utils/icons.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class ShareContactBottomSheet extends StatefulWidget {
  const ShareContactBottomSheet({
    super.key,
  });
  @override
  State<ShareContactBottomSheet> createState() =>
      _ShareContactBottomSheetState();
}

class _ShareContactBottomSheetState extends State<ShareContactBottomSheet> {
  // final ChatController chatController = Get.find<ChatController>();
  // String chatController.changeReportReasonValue(item) '';
  @override
  Widget build(BuildContext context) {
    return  Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.blackColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                    Get.back();
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextWidget(
                      text: "Cancel",
                      color: AppColor.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextWidget(
              text: "Share Contact",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text: "Enter Phone Number to Share Contact",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 14,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppIcons.sirenAlertIcon,
                  scale: 4,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Use a secure platform",
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackColor,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextWidget(
                        text:
                            "Choose a platform with safety features like blocking and reporting.",
                        fontWeight: FontWeight.w400,
                        color: AppColor.blackColor,
                        fontSize: 12,
                      ),
                    ],
                  ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppIcons.smartphoneIcon,
                  scale: 4,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Protect yourself from scams",
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackColor,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextWidget(
                        text:
                            "Be cautious when sharing your phone number to avoid potential scams or hacking attempts.",
                        fontWeight: FontWeight.w400,
                        color: AppColor.blackColor,
                        fontSize: 12,
                      ),
                    ],
                  ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppIcons.cardTickIcon,
                  scale: 4,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Keep financial details private",
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackColor,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextWidget(
                        text:
                            "Never share sensitive banking or crypto information. Report any suspicious requests.",
                        fontWeight: FontWeight.w400,
                        color: AppColor.blackColor,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            AppPrimaryButton(
              buttonText: "Got it",
              buttonColor: AppColor.primaryColor,
              onPressed: () {
                Get.back();
                showEnterPhoneNumberBottomSheet(context);
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

void showShareContactBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          ShareContactBottomSheet(),
        ],
      );
    },
  );
}
