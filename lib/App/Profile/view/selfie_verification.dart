
import 'package:flutter/material.dart';
import 'package:meet_singles/App/Profile/widget/edit_profile_widget.dart/selfie_verification_dialog.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';
import '../../../widget/app_botton.dart';

class SelfieVerification extends StatefulWidget {
  const SelfieVerification({super.key});

  @override
  State<SelfieVerification> createState() => _SelfieVerificationState();
}

class _SelfieVerificationState extends State<SelfieVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        centerTitle: true,
        title: TextWidget(
          text: "Selfie Verification",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Become a verified user",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 4,
              ),
              TextWidget(
                text:
                    "Verified profiles get noticed first. Add a quick selfie to complete yours and start matching with the most sought after members - It only takes a moment",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 56,
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundColor: AppColor.blackColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextWidget(
                      text: "Kindly move your face into the frame",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget(
              text: "Your selfie is never posted or stored in our data base",
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 16,
            ),
            AppPrimaryButton(
              buttonText: "Verify",
              onPressed: () {
                showSelfieVerificationDialog(context, "Successful");
              },
            ),
          ],
        ),
      ),
    );
  }
}
