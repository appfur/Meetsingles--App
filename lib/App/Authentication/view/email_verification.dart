import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Authentication/view/otp_screen.dart';
import 'package:meet_singles/widget/custom_form_field.dart';
import '../../../widget/app_botton.dart';
import '../../../widget/textwidget.dart';
import '../controller/auth_controller.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final authController = Get.put(AuthController());

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
                text: "Your email address?",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 32),
              CustomFormField(),
              SizedBox(height: 8),
              TextWidget(
                text: "Don’t loose access to your account, verify your email",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AppPrimaryButton(
          buttonText: "Verify",
          onPressed: () {
            Get.to(() => OtpScreen(
                  emailOrPhonenumber: authController.emailController.text,
                ));
          },
        ),
      ),
    );
  }
}
