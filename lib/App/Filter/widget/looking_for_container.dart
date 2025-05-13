import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';

class LookingForOptions extends StatefulWidget {
  const LookingForOptions({super.key});

  @override
  State<LookingForOptions> createState() => _LookingForOptionsState();
}

class _LookingForOptionsState extends State<LookingForOptions> {
  final List<String> options = [
    "A committed relationship",
    "Fun, casual dates",
    "Still figuring out",
    "New Friends",
    "Intimacy, without commitment",
  ];

  final Map<String, bool> selectedOptions = {};

  @override
  void initState() {
    super.initState();
    for (var option in options) {
      selectedOptions[option] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: options.map((option) {
          return CheckboxListTile(
            contentPadding: EdgeInsets.fromLTRB(16, 0, 8, 0),
            title: Text(
              option,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            value: selectedOptions[option],
            onChanged: (bool? value) {
              setState(() {
                selectedOptions[option] = value!;
              });
            },
            activeColor: AppColor.primaryColor,
            checkColor: Colors.white,
            checkboxScaleFactor: 1.5,
            side: const BorderSide(color: AppColor.primaryColor, width: 1),
            checkboxShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          );
        }).toList(),
      ),
    );
  }
}
