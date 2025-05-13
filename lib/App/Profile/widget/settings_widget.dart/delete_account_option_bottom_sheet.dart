import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/App/Profile/widget/settings_widget.dart/delete_account_other_reasons_bottom_sheet.dart';
import 'package:meet_singles/widget/app_outline_button.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class DeleteAccountOptionBottomSheet extends StatefulWidget {
  const DeleteAccountOptionBottomSheet({super.key});

  @override
  State<DeleteAccountOptionBottomSheet> createState() =>
      _DeleteAccountOptionBottomSheetState();
}

class _DeleteAccountOptionBottomSheetState
    extends State<DeleteAccountOptionBottomSheet> {
  String selectedItem = '';
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
          SelectableContainer(
            text: "I met someone on Blumdate",
            onTap: () {
              selectedItem = "I met someone on Blumdate";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "The app hasn't met my needs",
            onTap: () {
              selectedItem = "The app hasn't met my needs";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "I don’t like Blumdate",
            onTap: () {
              selectedItem = "I don’t like Blumdate";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "Others",
            onTap: () {
              selectedItem = "Others";
              setState(() {});
              Get.back();
              showDeleteAccountOtherReasonsBottomSheet(context);
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Delete Account",
            buttonColor: AppColor.redColor,
            textColor: AppColor.whiteColor,
            onPressed: () {
              Get.back();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AppOutlinedButton(
            buttonText: "Cancel",
            borderColor: AppColor.redColor,
            textColor: AppColor.redColor,
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

void showDeleteAccountOptionBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          DeleteAccountOptionBottomSheet(),
        ],
      );
    },
  );
}
