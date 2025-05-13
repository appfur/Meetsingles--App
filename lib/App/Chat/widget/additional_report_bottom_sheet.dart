import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/widget/report_bottom_sheet.dart';
import 'package:meet_singles/App/Chat/widget/report_submitted_dialog.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class AdditionalReportBottomSheet extends StatefulWidget {
  const AdditionalReportBottomSheet({
    super.key,
    required this.name,
  });
  final String name;

  @override
  State<AdditionalReportBottomSheet> createState() =>
      _AdditionalReportBottomSheetState();
}

class _AdditionalReportBottomSheetState
    extends State<AdditionalReportBottomSheet> {
  int _currentLength = 0;
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
        mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                  showReportBottomSheet(context, widget.name);
                },
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
            text: "Report ${widget.name}",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text:
                "Help us keep the community safe by reporting inappropriate behavior.",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          TextWidget(
            text: "Additional Comment",
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 150,
            child: TextField(
              // controller: servicesController.serviceDescriptionController.value,
              cursorHeight: 18,
              maxLines: 5,
              maxLength: 10, // Maximum character limit
              onChanged: (text) {
                setState(() {
                  _currentLength = text.length; // Updates character count
                });
              },
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                filled: false,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor.shade300,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor.shade300,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText:
                    "Could you provide more details about what you are reporting?",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                // counterText: '$_currentLength/300', // Display character count
                // counterStyle: const TextStyle(color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget(
            text: "Minimum character: ${10 - _currentLength}",
            fontWeight: FontWeight.w400,
            color: AppColor.greyColor,
            fontSize: 12,
          ),
          const SizedBox(
            height: 32,
          ),
          TextWidget(
            text: "We won’t tell  ${widget.name}, you reported them",
            fontWeight: FontWeight.w500,
            color: AppColor.greyColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 16,
          ),
          AppPrimaryButton(
            buttonText: "Submit",
            onPressed: () {
              Get.back();
              Get.back();
              showReportSubmittedDialog(context);
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

void showAdditionalReportBottomSheet(
  BuildContext context,
  String name,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          AdditionalReportBottomSheet(
            name: name,
          ),
        ],
      );
    },
  );
}
