import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';
import '../controller/filter_controller.dart';

class InterestedInDialog extends StatefulWidget {
  const InterestedInDialog({super.key});

  @override
  State<InterestedInDialog> createState() => _InterestedInDialogState();
}

class _InterestedInDialogState extends State<InterestedInDialog> {
  final FilterController filterController = Get.find<FilterController>(); // Use Get.find
  String selectedItem = '';

  final List<String> options = [
    "Men",
    "Women",
    "Everyone",
  ];

  final Map<String, bool> selectedOptions = {};

  @override
  void initState() {
    super.initState();
    for (var option in options) {
      selectedOptions[option] = false;
    }
  }

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
            text: "Interested In",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          Column(
            children: options.map((option) {
              return CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  option,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                value: selectedOptions[option],
                onChanged: (bool? value) {
                  setState(() {
                    selectedOptions[option] = value!;
                    selectedItem = option;
                    print("------- $option");
                  });
                },
                activeColor: AppColor.primaryColor,
                checkColor: Colors.white,
                checkboxScaleFactor: 1.5,
                side: const BorderSide(color: AppColor.primaryColor, width: 1),
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Done",
            textColor: AppColor.whiteColor,
            buttonColor: selectedItem.isEmpty
                ? AppColor.primaryColor.shade100
                : AppColor.primaryColor,
            onPressed: () {
              filterController.changeInterestedInValue(selectedItem);
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

void showInterestedInDialog(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return InterestedInDialog();
    },
  );
}
