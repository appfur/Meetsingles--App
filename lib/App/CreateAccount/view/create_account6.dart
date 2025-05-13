import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';
import 'create_account7.dart';

class CreateAccount6 extends StatefulWidget {
  const CreateAccount6({super.key});

  @override
  State<CreateAccount6> createState() => _CreateAccount6State();
}

class _CreateAccount6State extends State<CreateAccount6> {
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
                    width: 200,
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
                text: "What brings you to Blumdate?",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              SelectableContainer(
                text: "A committed relationship",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "A committed relationship";
                  });
                  Get.to(() => CreateAccount7());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Fun, casual date",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Fun, casual date";
                  });
                  Get.to(() => CreateAccount7());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Still figuring out",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Still figuring out";
                  });
                  Get.to(() => CreateAccount7());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "New friends",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "New friends";
                  });
                  Get.to(() => CreateAccount7());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Intimacy without commitment",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Intimacy without commitment";
                  });
                  Get.to(() => CreateAccount7());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
