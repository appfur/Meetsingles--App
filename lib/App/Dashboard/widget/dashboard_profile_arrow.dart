import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Dashboard/view/dashboard_profile.dart';

import '../../../config/theme/app_color.dart';

class DashboardProfileArrow extends StatefulWidget {
  const DashboardProfileArrow({super.key});

  @override
  State<DashboardProfileArrow> createState() => _DashboardProfileArrowState();
}

class _DashboardProfileArrowState extends State<DashboardProfileArrow> {
  @override
  Widget build(BuildContext context) {
    return Hero(
       tag: 'profileCard',
      child: GestureDetector(
        onTap: () {
      Get.to(()=> DashboardProfile());
      // Navigator.push(
      //   context,
      //   PageRouteBuilder(
      //     transitionDuration: Duration(milliseconds: 500),
      //     pageBuilder: (context, animation, secondaryAnimation) {
      //       return DashboardProfile(); // Replace with your actual next screen widget
      //     },
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       // Slide in the new screen from bottom
      //       var slideIn = Tween<Offset>(
      //         begin: Offset(0, 1), // Start from bottom
      //         end: Offset.zero,
      //       ).animate(animation);
      
      //       // Move the current screen up and fade out
      //       var slideOut = Tween<Offset>(
      //         begin: Offset.zero,
      //         end: Offset(0, -1), // Move up
      //       ).animate(secondaryAnimation);
      
      //       var fadeOut = Tween<double>(
      //         begin: 1.0,
      //         end: 0.0, // Fade out
      //       ).animate(secondaryAnimation);
      
      //       return Stack(
      //         children: [
      //           SlideTransition(
      //             position: slideOut,
      //             child: FadeTransition(opacity: fadeOut, child: child),
      //           ),
      //           SlideTransition(
      //             position: slideIn,
      //             child: child,
      //           ),
      //         ],
      //       );
      //     },
      //   ),
      // );
        },
        child: Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.whiteColor),
        color: AppColor.whiteColor.withOpacity(0.2),
      ),
      child: Icon(
        Icons.arrow_upward,
        color: AppColor.whiteColor,
      ),
        ),
      ),
    );
  }
}