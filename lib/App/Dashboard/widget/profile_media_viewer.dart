import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controller/dashboard_controller.dart';

class ProfileMediaViewer extends StatefulWidget {
  final String mediaUrls;

  const ProfileMediaViewer({
    super.key,
    required this.mediaUrls,
  });

  @override
  State<ProfileMediaViewer> createState() => _ProfileMediaViewerState();
}

class _ProfileMediaViewerState extends State<ProfileMediaViewer> {
  final dashboardController = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() async {
    await dashboardController.initializeVideoController(widget.mediaUrls);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        if (controller.videoController != null &&
            controller.videoController!.value.isInitialized) {
          return AspectRatio(
            aspectRatio: controller.videoController!.value.aspectRatio,
            child: VideoPlayer(controller.videoController!),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
