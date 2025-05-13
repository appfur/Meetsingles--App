import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/CreateAccount/view/create_account6.dart';
import 'package:meet_singles/App/CreateAccount/widget/selectable_container.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class CreateAccount5 extends StatefulWidget {
  const CreateAccount5({super.key});

  @override
  State<CreateAccount5> createState() => _CreateAccount5State();
}

class _CreateAccount5State extends State<CreateAccount5> {
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
                    width: 170,
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
                text: "I'm interested in dating/meeting",
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
                  Get.to(() => CreateAccount6());
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
                  Get.to(() => CreateAccount6());
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SelectableContainer(
                text: "Everyone",
                selectedItem: selectedItem,
                onTap: () {
                  setState(() {
                    selectedItem = "Everyone";
                  });
                  Get.to(() => CreateAccount6());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
