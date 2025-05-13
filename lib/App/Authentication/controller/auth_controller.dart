import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isloading = false.obs;

  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final pinController = TextEditingController();

  bool containsUppercase(String text) {
    final RegExp uppercaseRegex = RegExp(r'[A-Z]');
    return uppercaseRegex.hasMatch(text); // Returns true if uppercase exists
  }

  var remainingTime = 60.obs; // 60 seconds countdown
  var remainingTimerTime = 5.obs;
  Timer? timer;
  bool hasOtpExpired = false;

  void startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        remainingTime--;
      } else {
        timer.cancel();
        hasOtpExpired = true;
      }
    });
    refresh();
  }

  // void startTimer(String userType) {
  //   timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     if (remainingTimerTime > 0) {
  //       remainingTimerTime--;
  //     } else {
  //       timer.cancel(); // Stop the timer
  //       if(userType == "Customer"){
  //       Get.to(() => const BottomNavBar());

  //       } else{
  //       Get.to(() => const ServiceProviderBottomNavBar());
          
  //       }
  //     }
  //   });
  // }

    @override
  void onClose() {
    timer?.cancel(); // Cancel timer to avoid memory leaks
    super.onClose();
  }
}
