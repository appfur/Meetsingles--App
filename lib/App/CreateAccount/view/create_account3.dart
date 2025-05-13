import 'package:flutter/material.dart';
import 'package:meet_singles/App/CreateAccount/widget/birthday_picker.dart';
import 'package:meet_singles/App/CreateAccount/widget/bookings_dailog.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';

class CreateAccount3 extends StatefulWidget {
  const CreateAccount3({super.key});

  @override
  State<CreateAccount3> createState() => _CreateAccount3State();
}

class _CreateAccount3State extends State<CreateAccount3> {
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
                    width: 120,
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
                text: "When is your birthday?",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomDatePicker(),
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
            showAgeDialog(context, "20");
          },
        ),
      ),
    );
  }
}
