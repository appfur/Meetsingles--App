import 'package:get/get.dart';

class MatchesController extends GetxController {
  var interestedIn = "None Selected".obs;
  var locationValue = "None Selected".obs;
    var educationLevelValue = "None Selected".obs;
  var religionValue = "None Selected".obs;

  void changeInterestedInValue(String item) {
    interestedIn.value = item;
  }

    void changeLocationValue(String item) {
    locationValue.value = item;
  }

    void changeEducationLevelValue(String item) {
    educationLevelValue.value = item;
  }

    void changeReligionValue(String item) {
    religionValue.value = item;
  }

}
