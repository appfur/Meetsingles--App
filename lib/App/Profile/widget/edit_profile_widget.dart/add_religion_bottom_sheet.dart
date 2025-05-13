import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class AddReligionBottomSheet extends StatefulWidget {
  const AddReligionBottomSheet({super.key});

  @override
  State<AddReligionBottomSheet> createState() => _AddReligionBottomSheetState();
}

class _AddReligionBottomSheetState extends State<AddReligionBottomSheet> {
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
            text: "Add Religion",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Select your religion",
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
                  text: "Any Religion",
                  onTap: () {
                    selectedItem = "Any Religion";
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
                  text: "Atheist",
                  onTap: () {
                    selectedItem = "Atheist";
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
                  text: "Buddhist",
                  onTap: () {
                    selectedItem = "Buddhist";
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
                  text: "Catholic",
                  onTap: () {
                    selectedItem = "Catholic";
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
                  text: "Christian",
                  onTap: () {
                    selectedItem = "Christian";
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
                  text: "Muslim",
                  onTap: () {
                    selectedItem = "Muslim";
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
                  text: "Spiritual",
                  onTap: () {
                    selectedItem = "Spiritual";
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
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: SelectableContainer(
                  text: "None",
                  onTap: () {
                    selectedItem = "None";
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
                  text: "Rather not say",
                  onTap: () {
                    selectedItem = "Rather not say";
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

void showAddReligionBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          AddReligionBottomSheet(),
        ],
      );
    },
  );
}
