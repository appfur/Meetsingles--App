import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Filter/widget/basic_filter.dart';
import 'package:meet_singles/App/Filter/widget/filter_tab.dart';
import 'package:meet_singles/App/Filter/widget/premium_filter.dart';
import 'package:meet_singles/App/Filter/widget/upgrade_premium_dialog.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/app_botton.dart';
import 'package:meet_singles/widget/textwidget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String filterType = "Basic Filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: const TextWidget(
          text: "Filters",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            // Tab Switch
            FilterTab(
              onTabChanged: (index) {
                // Handle tab selection change
                if (index == 0) {
                  filterType = "Basic Filters";
                } else {
                  filterType = "Premium Filters";
                }
                print("Selected Tab: $index");
                setState(() {});
              },
            ),
            filterType == "Basic Filters" ? BasicFilter() : PremiumFilter(),

            const SizedBox(height: 24),
            AppPrimaryButton(buttonText: "Apply Filter", onPressed: (){
              if(filterType == "Basic Filters"){

              } else {
                showUpgradePremiumDialog(context);
              }
            },)
          ],
        ),
      ),
    );
  }
}