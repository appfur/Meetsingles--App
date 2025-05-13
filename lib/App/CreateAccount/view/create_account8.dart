import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account9.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/custom_form_field.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';

class CreateAccount8 extends StatefulWidget {
  const CreateAccount8({super.key});

  @override
  State<CreateAccount8> createState() => _CreateAccount8State();
}

class _CreateAccount8State extends State<CreateAccount8> {
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
                    width: 250,
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
                text: "Educational Institution",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomFormField(hintText: "First name",),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                text: "This is how it will be shown on your profile!",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.greyColor,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: AppPrimaryButton(
          buttonText: "Next",
          onPressed: () {
            Get.to(() => CreateAccount9());
          },
        ),
      ),
    );
  }
}
