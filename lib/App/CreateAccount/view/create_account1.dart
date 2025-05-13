import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/guidlines_row.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';
import 'create_account2.dart';

class CreateAccount1 extends StatefulWidget {
  const CreateAccount1({super.key});

  @override
  State<CreateAccount1> createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
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
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.shade50,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              TextWidget(
                text: "Welcome to Blumdate!",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                text:
                    "To ensure a safe and enjoyable experience, please follow these guidelines",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 24,
              ),
              GuidlinesRow(
                headerText: "Embrace your authenticity",
                subText:
                    "Use your real photos, name, and profile details to build genuine connections.",
              ),
              const SizedBox(
                height: 16,
              ),
              GuidlinesRow(
                headerText: "Respect others",
                subText:
                    "Be kind and considerate. Avoid offensive language or behavior.ns.",
              ),
              const SizedBox(
                height: 16,
              ),
              GuidlinesRow(
                headerText: "Keep it clean",
                subText:
                    "No explicit content, inappropriate messages, or solicitations.",
              ),
              const SizedBox(
                height: 16,
              ),
              GuidlinesRow(
                headerText: "No buying or selling",
                subText:
                    "Blumdate is for genuine connections, so please avoid financial requests or business transactions.",
              ),
              const SizedBox(
                height: 16,
              ),
              GuidlinesRow(
                headerText: "Protect your privacy",
                subText:
                    "Avoid sharing personal details (phone number, social media, etc.) too soon. Get to know your match first.",
              ),
              const SizedBox(
                height: 24,
              ),
              TextWidget(
                text:
                    "Blumdate is all about building real connections. Enjoy meeting new people, and we hope you find someone special!",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: AppPrimaryButton(
          buttonText: "Agree",
          onPressed: () {
            Get.to(() => CreateAccount2());
          },
        ),
      ),
    );
  }
}
