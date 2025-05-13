import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account1.dart';
import '../../../config/theme/app_color.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';
import '../controller/auth_controller.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    required this.emailOrPhonenumber,
  });
  final String emailOrPhonenumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final authController = Get.put(AuthController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController.startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Enter your code",
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                text:
                    "Kindly input the code sent to ${widget.emailOrPhonenumber}",
                fontSize: 14,
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Pinput(
                  controller: authController.pinController,
                  defaultPinTheme: PinTheme(
                    width: 64,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryColor.shade100),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  length: 6,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              authController.hasOtpExpired == false
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: "Code will expire in ",
                          fontSize: 14,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextWidget(
                          text: '00:${authController.remainingTime}',
                          color: AppColor.primaryColor,
                          fontSize: 14,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: "Didn't receive any code?",
                          fontSize: 14,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const TextWidget(
                            text: 'Resend',
                            color: AppColor.primaryColor,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AppPrimaryButton(
          buttonText: "Verify",
          onPressed: () {
            Get.to(() => CreateAccount1());
          },
        ),
      ),
    );
  }
}
