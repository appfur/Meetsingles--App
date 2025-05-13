import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  // Lists for months, days, and years
  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  final List<int> days = List.generate(31, (index) => index + 1);
  final List<int> years = List.generate(10, (index) => 2015 + index);

  int selectedMonth = 8; // September (Index 8)
  int selectedDay = 16; // Default day
  int selectedYear = 2021; // Default year

  @override
  Widget build(BuildContext context) {
    return // Date Picker Wheel
        Center(
      child: Container(
        height: 215,
        width: 308,
        color: AppColor.backgroundColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Month Picker
                  Expanded(
                    child: CupertinoPicker(
                      backgroundColor: Colors.transparent,
                      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                        background: Colors.transparent,
                      ),
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedMonth),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedMonth = index;
                        });
                      },
                      children: months
                          .map(
                            (month) => _pickerItem(month, Alignment.centerLeft),
                          )
                          .toList(),
                    ),
                  ),
                  // Day Picker
                  Expanded(
                    child: CupertinoPicker(
                      backgroundColor: AppColor.backgroundColor,
                      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                        background: Colors.transparent,
                      ),
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedDay - 1),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedDay = days[index];
                        });
                      },
                      children: days
                          .map((day) =>
                              _pickerItem(day.toString(), Alignment.center))
                          .toList(),
                    ),
                  ),
                  // Year Picker
                  Expanded(
                    child: CupertinoPicker(
                      backgroundColor: AppColor.backgroundColor,
                      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                        background: Colors.transparent,
                      ),
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedYear - 2015),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedYear = years[index];
                        });
                      },
                      children: years
                          .map((year) => _pickerItem(
                              year.toString(), Alignment.centerRight))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            // Custom Overlay for Highlighted Selection
            Positioned(
              top: 90, // Position the highlight in the center
              left: 0,
              right: 0,
              child: Container(
                height: 40, // Matches itemExtent
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey
                      .withOpacity(0.2), // Adjust opacity to match your design
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Styling for picker items
  Widget _pickerItem(String text, AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: AppColor.blackColor,
        ),
      ),
    );
  }
}
