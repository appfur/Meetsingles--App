import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account8.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class CreateAccount7 extends StatefulWidget {
  const CreateAccount7({super.key});

  @override
  State<CreateAccount7> createState() => _CreateAccount7State();
}

class _CreateAccount7State extends State<CreateAccount7> {
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
                    width: 230,
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
                text: "Your religion or spiritual belief?",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectableContainer(
                      text: "Any religion",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Any religion";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectableContainer(
                      text: "Atheist",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Atheist";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectableContainer(
                      text: "Buddhist",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Buddhist";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectableContainer(
                      text: "Catholic",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Catholic";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectableContainer(
                      text: "Christian",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Christian";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectableContainer(
                      text: "Muslim",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Muslim";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectableContainer(
                      text: "Spiritual",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Spiritual";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectableContainer(
                      text: "Others",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Others";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectableContainer(
                      text: "None",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "None";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectableContainer(
                      text: "Rather not say",
                      selectedItem: selectedItem,
                      onTap: () {
                        setState(() {
                          selectedItem = "Rather not say";
                        });
                        Get.to(() => CreateAccount8());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
