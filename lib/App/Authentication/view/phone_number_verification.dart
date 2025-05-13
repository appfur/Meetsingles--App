import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Authentication/controller/auth_controller.dart';
import 'package:meet_singles/App/Authentication/view/otp_screen.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/textwidget.dart';

class PhoneNumberVerification extends StatefulWidget {
  const PhoneNumberVerification({super.key});

  @override
  State<PhoneNumberVerification> createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  final authController = Get.put(AuthController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                text: "Can we get your number?",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(left: 12, right: 2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: "NG +234",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.blackColor,
                          ),
                          dropdownColor: AppColor.backgroundColor,
                          elevation: 0,
                          items: [
                            DropdownMenuItem(
                              value: "NG +234",
                              child: Text("NG +234"),
                            ),
                            DropdownMenuItem(
                              value: "US +1",
                              child: Text("US +1"),
                            ),
                            DropdownMenuItem(
                              value: "UK +44",
                              child: Text("UK +44"),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 6,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: authController.phoneNumberController,
                      decoration: InputDecoration(
                        hintText: "Phone number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColor.primaryColor.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: AppColor.primaryColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColor.primaryColor.shade100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextWidget(
                text:
                    "We will text a code to verify if you’re really you. Message and data rate may apply.",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AppPrimaryButton(
          buttonText: "Next",
          onPressed: () {
            Get.to(() => OtpScreen(
                emailOrPhonenumber: authController.phoneNumberController.text));
          },
        ),
      ),
    );
  }
}
