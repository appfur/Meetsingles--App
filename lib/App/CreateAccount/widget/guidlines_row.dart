import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class GuidlinesRow extends StatelessWidget {
  const GuidlinesRow({
    super.key,
    required this.headerText,
    required this.subText,
  });
  final String headerText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check,
          color: AppColor.primaryColor,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: headerText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                text:
                    subText,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
      ],
    );
  }
}
