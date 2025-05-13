import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/widget/app_search_text_field.dart';
import '../../../../config/theme/app_color.dart';
import '../../../../widget/app_botton.dart';
import '../../../../widget/textwidget.dart';

class ChangeNationalityBottomSheet extends StatefulWidget {
  const ChangeNationalityBottomSheet({super.key});

  @override
  State<ChangeNationalityBottomSheet> createState() =>
      _ChangeNationalityBottomSheetState();
}

class _ChangeNationalityBottomSheetState
    extends State<ChangeNationalityBottomSheet> {
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
            text: "What's your nationality",
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 32,
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
            height: 32,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Lagos, NG",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Divider(
                        color: AppColor.primaryColor.shade50,
                      )
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

void showChangeNationalityBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return ChangeNationalityBottomSheet();
    },
  );
}
