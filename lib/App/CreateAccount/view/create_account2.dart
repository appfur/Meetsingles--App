import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/custom_form_field.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';
import 'create_account3.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({super.key});

  @override
  State<CreateAccount2> createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
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
                    width: 100,
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
                text: "What's your first name?",
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
                text: "You wont be able to change this later",
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
            Get.to(() => CreateAccount3());
          },
        ),
      ),
    );
  }
}
