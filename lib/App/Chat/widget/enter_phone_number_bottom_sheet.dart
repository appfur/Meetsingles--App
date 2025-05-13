import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/controller/chat_controller.dart';
import 'package:meet_singles/widget/custom_form_field.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class EnterPhoneNumberBottomSheet extends StatefulWidget {
  const EnterPhoneNumberBottomSheet({
    super.key,
  });
  @override
  State<EnterPhoneNumberBottomSheet> createState() =>
      _EnterPhoneNumberBottomSheetState();
}

class _EnterPhoneNumberBottomSheetState
    extends State<EnterPhoneNumberBottomSheet> {
  final ChatController chatController = Get.find<ChatController>();
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
          TextWidget(
            text: "Enter Phone Number",
            fontWeight: FontWeight.w500,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFormField(
            hintText: "Enter Number",
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Share Contact",
            buttonColor: AppColor.primaryColor,
            onPressed: () {
              Get.back();
              // ChatController.changeReligionValue(chatController.reportReason.value);
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

void showEnterPhoneNumberBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          EnterPhoneNumberBottomSheet(),
        ],
      );
    },
  );
}
