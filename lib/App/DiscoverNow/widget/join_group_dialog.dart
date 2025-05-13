import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/DiscoverNow/view/discover_now_room_view.dart';
import 'package:meet_singles/App/DiscoverNow/view/discover_now_screen.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class JoinGroupDialog extends StatelessWidget {
  final Category category;
  const JoinGroupDialog({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
            child: Icon(Icons.arrow_back),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            height: 128,
            width: double.infinity,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                    child: TextWidget(
                      text: category.title,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                // const SizedBox(width: 4),
                Expanded(
                  child: Image.asset(
                    category.iconPath,
                    scale: 3,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextWidget(
            text: category.title,
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
            fontSize: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          TextWidget(
            text:
                "Connect with like-minded individuals seeking a committed relationship.",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 32,
          ),
          TextWidget(
            text: "To join this group you must",
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor,
            fontSize: 14,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Makes the Column wrap its children

              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: AppColor.greenColor,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TextWidget(
                        text: "Be seeking a committed relationship",
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor,
                        fontSize: 14,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          AppPrimaryButton(
            buttonText: "Join group",
            onPressed: () {
              Get.back();
              Get.to(() => DiscoverNowRoomView(roomName: category.title));
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

void showJoinGroupDialog(
  BuildContext context,
  Category category,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,

    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          JoinGroupDialog(
            category: category,
          ),
        ],
      );
    },
  );
}
