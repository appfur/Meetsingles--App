// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:meet_singles/App/Dashboard/widget/cancel_match_dialog.dart';
// import 'package:meet_singles/App/Dashboard/widget/dashboard_profile_arrow.dart';
// import 'package:meet_singles/App/Dashboard/widget/no_profiles_dialog.dart';
// import 'package:meet_singles/App/Dashboard/widget/super_like_dialog.dart';

// import '../../../config/theme/app_color.dart';
// import '../../../utils/icons.dart';
// import '../../../utils/images.dart';
// import '../../../widget/textwidget.dart';
// import 'icon_circular_button.dart';
// import 'icon_rectangular_button.dart';

// class ProfileScrollWidget extends StatefulWidget {
//   const ProfileScrollWidget({super.key});

//   @override
//   State<ProfileScrollWidget> createState() => _ProfileScrollWidgetState();
// }

// class _ProfileScrollWidgetState extends State<ProfileScrollWidget> {
//   final PageController _pageController = PageController();
//   int currentPage = 0;

//   final List<String> mediaList = [
//     AppImages.profileImage,
//     AppImages.matchesImage,
//     AppImages.matchedFemaleImage, // You can mix videos later
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Stack(
//                 children: [
//                   // Ensure PageView takes full height
//                   Positioned.fill(
//                     child: PageView.builder(
//                       controller: _pageController,
//                       itemCount: mediaList.length,
//                       onPageChanged: (index) {
//                         setState(() {
//                           currentPage = index;
//                         });
//                       },
//                       itemBuilder: (context, index) {
//                         final media = mediaList[index];

//                         if (media.endsWith(".mp4")) {
//                           return Container(
//                             color: Colors.black,
//                             child: Center(
//                               child: Icon(Icons.play_circle_fill,
//                                   color: Colors.white, size: 64),
//                             ),
//                           );
//                         } else {
//                           return Image.asset(
//                             media,
//                             width: double.infinity,
//                             height: double.infinity,
//                             fit: BoxFit.cover,
//                           );
//                         }
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Container(
//           height: 48,
//           color: AppColor.backgroundColor,
//         ),

//         // Action Buttons
//         Positioned(
//           bottom: 0,
//           left: 16,
//           right: 16,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: IconRectangularButton(
//                   backgroundColor: AppColor.redColor,
//                   imagePath: AppIcons.cancelIcon,
//                   onPressed: () => showCancelMatchDialog(context, "Jumoke"),
//                 ),
//               ),
//               const SizedBox(width: 8),
//               IconCircularButton(
//                 primaryColor: AppColor.primaryColor,
//                 imagePath: AppIcons.heartShine,
//                 onPressed: () => showSuperLikeDialog(context),
//               ),
//               const SizedBox(width: 8),
//               Expanded(
//                 child: IconRectangularButton(
//                   backgroundColor: AppColor.primaryColor,
//                   imagePath: AppIcons.heartWhite,
//                   onPressed: () => showNoProfilesDialog(context),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
