import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account5.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class CreateAccount4 extends StatefulWidget {
  const CreateAccount4({super.key});

  @override
  State<CreateAccount4> createState() => _CreateAccount4State();
}

class _CreateAccount4State extends State<CreateAccount4> {
  String? selectedItem;

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
                    width: 150,
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
                text: "I am a",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              SelectableContainer(
                text: "Man",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Man";
                  });
                  Get.to(() => CreateAccount5());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Woman",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Woman";
                  });
                  Get.to(() => CreateAccount5());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Prefer not to say",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Prefer not to say";
                  });
                  Get.to(() => CreateAccount5());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
