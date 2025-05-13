import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class SelectableContainer extends StatefulWidget {
  const SelectableContainer({
    super.key,
    required this.text,
    this.width = double.infinity,
    required this.onTap,
    required this.selectedItem,
  });
  final double width;
  final String text;
  final Function()? onTap;
  final String? selectedItem;

  @override
  State<SelectableContainer> createState() => _SelectableContainerState();
}

class _SelectableContainerState extends State<SelectableContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: 56,
        decoration: BoxDecoration(
          color: widget.selectedItem == widget.text
              ? AppColor.primaryColor
              : AppColor.backgroundColor,
          border: Border.all(
            color: AppColor.primaryColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextWidget(
            text: widget.text,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: widget.selectedItem == widget.text
                ? AppColor.whiteColor
                : AppColor.blackColor,
          ),
        ),
      ),
    );
  }
}
