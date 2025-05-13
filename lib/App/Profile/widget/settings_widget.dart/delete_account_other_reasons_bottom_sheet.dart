import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class DeleteAccountOtherReasonsBottomSheet extends StatefulWidget {
  const DeleteAccountOtherReasonsBottomSheet({
    super.key,
  });

  @override
  State<DeleteAccountOtherReasonsBottomSheet> createState() =>
      _DeleteAccountOtherReasonsBottomSheetState();
}

class _DeleteAccountOtherReasonsBottomSheetState
    extends State<DeleteAccountOtherReasonsBottomSheet> {
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
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColor.blackColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TextWidget(
            text: "Delete Account",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Please let us know why you want to delete your account",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          TextWidget(
            text: "Other reasons",
            fontWeight: FontWeight.w500,
            color: AppColor.blackColor,
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
                    color: AppColor.primaryColor.shade50,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor.shade100,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor.shade100,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText:
                    "Could you provide more details about why you are deleting your account",
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
            height: 40,
          ),
          AppPrimaryButton(
            buttonText: "Submit",
            onPressed: () {
              Get.back();
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

void showDeleteAccountOtherReasonsBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          DeleteAccountOtherReasonsBottomSheet(),
        ],
      );
    },
  );
}
