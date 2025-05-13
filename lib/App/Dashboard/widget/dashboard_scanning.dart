import 'package:flutter/material.dart';
import '../../../config/theme/app_color.dart';
import '../../../utils/icons.dart';
import '../../../widget/textwidget.dart';
import 'animated_circle_widget.dart';
import 'icon_circular_button.dart';
import 'icon_rectangular_button.dart';

class DashboardScanning extends StatelessWidget {
  const DashboardScanning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            const SizedBox(
              height: 56,
            ),
            AnimatedPulsatingWidget(),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: TextWidget(
                text: "Finding Your Match",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: IconRectangularButton(
                    backgroundColor: AppColor.redColor.withOpacity(0.5),
                   imagePath: AppSvgIcons.cancelIcon,
                      iconColor: AppColor.whiteColor,
onPressed: () {
  
},                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconCircularButton(
                  primaryColor: AppColor.primaryColor.withOpacity(0.5),
                  imagePath: AppSvgIcons.heartShine,
                      iconColor: AppColor.primaryColor,
                  onPressed: (){
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: IconRectangularButton(
                    backgroundColor: AppColor.primaryColor.withOpacity(0.5),
                    imagePath: AppSvgIcons.likeIcon,
                      iconColor: AppColor.whiteColor,
                    onPressed: () {
                      
                    },
                  ),
                ),
              ],
            )
          ],
        );
  }
}