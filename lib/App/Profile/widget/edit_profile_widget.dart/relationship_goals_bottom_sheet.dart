import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class RelationshipGoalsBottomSheet extends StatefulWidget {
  const RelationshipGoalsBottomSheet({super.key});

  @override
  State<RelationshipGoalsBottomSheet> createState() =>
      _RelationshipGoalsBottomSheetState();
}

class _RelationshipGoalsBottomSheetState
    extends State<RelationshipGoalsBottomSheet> {
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
            text: "Relationship",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text: "What are you looking for?",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          SelectableContainer(
            text: "A committed relationship",
            onTap: () {
              selectedItem = "A committed relationship";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "Fun, casual dates",
            onTap: () {
              selectedItem = "Fun, casual dates";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "Still figuring out",
            onTap: () {
              selectedItem = "Still figuring out";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "New friends",
            onTap: () {
              selectedItem = "New friends";
              setState(() {});
            },
            selectedItem: selectedItem,
          ),
          const SizedBox(
            height: 16,
          ),
          SelectableContainer(
            text: "Intimacy without commitment",
            onTap: () {
              selectedItem = "Intimacy without commitment";
              setState(() {});
            },
            selectedItem: selectedItem,
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

void showRelationshipGoalsBottomSheet(
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
          RelationshipGoalsBottomSheet(),
        ],
      );
    },
  );
}
