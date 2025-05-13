import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';
import '../controller/filter_controller.dart';

class ReligionDialog extends StatefulWidget {
  const ReligionDialog({super.key});

  @override
  State<ReligionDialog> createState() => _ReligionDialogState();
}

class _ReligionDialogState extends State<ReligionDialog> {
  final FilterController filterController = Get.find<FilterController>();
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
            text: "Religion",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "Select religion to filter profiles.",
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
              filterController.changeReligionValue(selectedItem);
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

void showReligionDialog(
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
          ReligionDialog(),
        ],
      );
    },
  );
}
