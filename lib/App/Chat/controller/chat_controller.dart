import 'package:get/get.dart';

class ChatController extends GetxController {
  var reportReason = "".obs;

  void changeReportReasonValue(String item) {
    reportReason.value = item;
    print("-------- ${reportReason.value}");
  }

}
