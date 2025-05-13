import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/controller/chat_controller.dart';
import 'package:meet_singles/App/Chat/widget/additional_report_bottom_sheet.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';

class ReportBottomSheet extends StatefulWidget {
  const ReportBottomSheet({super.key, required this.name});
  final String name;
  @override
  State<ReportBottomSheet> createState() => _ReportBottomSheetState();
}

class _ReportBottomSheetState extends State<ReportBottomSheet> {
  final ChatController chatController = Get.find<ChatController>();
  // String chatController.changeReportReasonValue(item) '';
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.blackColor,
                  ),
                ),
                GestureDetector(
                onTap: () {
                  Get.back();
                  Get.back();
      
                } ,
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextWidget(
                    text: "Cancel",
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
              text: "Report ${widget.name}",
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor,
              fontSize: 16,
            ),
            const SizedBox(
              height: 4,
            ),
            TextWidget(
              text: "Help us keep the community safe by reporting inappropriate behavior.",
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
                    text: "Fake Profile",
                    onTap: () {
                      chatController.changeReportReasonValue("Fake Profile") ;
                      
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SelectableContainer(
                    text: "Harassment or Bullying",
                    onTap: () {
                      chatController.changeReportReasonValue("Harassment or Bullying") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
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
                    text: "Inappropriate Content",
                    onTap: () {
                      chatController.changeReportReasonValue("Inappropriate Content") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SelectableContainer(
                    text: "Scam or Fraud",
                    onTap: () {
                      chatController.changeReportReasonValue("Scam or Fraud") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
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
                    text: "Underage",
                    onTap: () {
                      chatController.changeReportReasonValue("Underage") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SelectableContainer(
                    text: "Selling on Platform",
                    onTap: () {
                      chatController.changeReportReasonValue("Selling on Platform") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
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
                    text: "Violence",
                    onTap: () {
                      chatController.changeReportReasonValue("Violence") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SelectableContainer(
                    text: "Abusive or hateful",
                    onTap: () {
                      chatController.changeReportReasonValue("Abusive or hateful") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
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
                    text: "Prostitution",
                    onTap: () {
                      chatController.changeReportReasonValue("Prostitution") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SelectableContainer(
                    text: "Others",
                    onTap: () {
                      chatController.changeReportReasonValue("Others") ;
                      // setState(() {});
                    },
                    selectedItem: chatController.reportReason.value,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            TextWidget(
              text: "We won’t tell  jomoke, you reported them",
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor,
              fontSize: 14,
            ),
            const SizedBox(
              height: 16,
            ),
            AppPrimaryButton(
              buttonText: "Next",
              buttonColor: chatController.reportReason.value.isEmpty
                  ? AppColor.primaryColor.shade100
                  : AppColor.primaryColor,
              onPressed: () {
                Get.back();
                // ChatController.changeReligionValue(chatController.reportReason.value);
                showAdditionalReportBottomSheet(context, widget.name);
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

void showReportBottomSheet(
  BuildContext context,
  String name
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // Ensures rounded corners look good
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          ReportBottomSheet(name: name,),
        ],
      );
    },
  );
}
