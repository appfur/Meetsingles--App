import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/widget/app_search_text_field.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class LocationDialog extends StatefulWidget {
  const LocationDialog({super.key});

  @override
  State<LocationDialog> createState() => _LocationDialogState();
}

class _LocationDialogState extends State<LocationDialog> {
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
            text: "Change Location",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 24,
          ),

          //Use google maps for search
          AppSearchTextField(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: AppColor.greyColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(4, 2, 2, 6),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -0.8,
                    child: Icon(
                      Icons.send,
                      size: 16,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              TextWidget(
                text: "Use your current location",
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
                fontSize: 14,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: "Lagos, NG",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      TextWidget(
                        text: "123km",
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                        fontSize: 12,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          AppPrimaryButton(
            buttonText: "Done",
            onPressed: () => Get.back(),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

void showLocationDialog(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return LocationDialog();
    },
  );
}
