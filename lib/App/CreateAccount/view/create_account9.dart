import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account10.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

import '../../../widget/app_botton.dart';

class CreateAccount9 extends StatefulWidget {
  const CreateAccount9({super.key});

  @override
  State<CreateAccount9> createState() => _CreateAccount9State();
}

class _CreateAccount9State extends State<CreateAccount9> {
  double _value = 0.8;
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
                    width: 300,
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
                text: "Set your preferred distance for potential matches.",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Range",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greyColor,
                  ),
                  TextWidget(
                    text: "150km",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greyColor,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                  thumbColor: AppColor.whiteColor,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 15,
                    elevation: 2,
                  ),
                  activeTrackColor: AppColor.primaryColor,
                  inactiveTrackColor: AppColor.primaryColor.shade50,
                ),
                child: Slider(
                  value: _value,
                  onChanged: (val) {
                    _value = val;
                    setState(() {});
                  },
                ),
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
            Get.to(() => CreateAccount10());
          },
        ),
      ),
    );
  }
}
