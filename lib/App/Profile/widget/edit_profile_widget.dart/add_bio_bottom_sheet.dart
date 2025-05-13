import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class AddBioBottomSheet extends StatefulWidget {
  const AddBioBottomSheet({
    super.key,
  });

  @override
  State<AddBioBottomSheet> createState() => _AddBioBottomSheetState();
}

class _AddBioBottomSheetState extends State<AddBioBottomSheet> {
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
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColor.blackColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextWidget(
                    text: "Clear",
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
            text: "Add Bio",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 24,
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
                hintText: "Tell us something about yourself",
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
            buttonText: "Add Bio",
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

void showAddBioBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          AddBioBottomSheet(),
        ],
      );
    },
  );
}
