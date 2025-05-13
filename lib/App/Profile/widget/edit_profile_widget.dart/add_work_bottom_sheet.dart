import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class AddWorkBottomSheet extends StatefulWidget {
  const AddWorkBottomSheet({super.key});

  @override
  State<AddWorkBottomSheet> createState() => _AddWorkBottomSheetState();
}

class _AddWorkBottomSheetState extends State<AddWorkBottomSheet> {
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
        mainAxisSize: MainAxisSize.min, // Prevent full-screen expansion
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
            text: "Employment Status",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Enter you employment status",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "Employed",
                  onTap: () {
                    selectedItem = "Employed";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SelectableContainer(
                  text: "Self Employed",
                  onTap: () {
                    selectedItem = "Self Employed";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "Umemployed",
                  onTap: () {
                    selectedItem = "Umemployed";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SelectableContainer(
                  text: "Others",
                  onTap: () {
                    selectedItem = "Others";
                    setState(() {});
                  },
                  selectedItem: selectedItem,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Done",
            buttonColor: selectedItem.isEmpty
                ? AppColor.primaryColor.shade100
                : AppColor.primaryColor,
            onPressed: () {
              // filterController.changeEducationLevelValue(selectedItem);
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

void showAddWorkBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return AddWorkBottomSheet();
    },
  );
}
