import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../utils/images.dart';

class DashboardController extends GetxController {
  RxInt currentCardIndex = 0.obs;
  bool autoPlayVideos = true;
  RxInt currentPage = 0.obs;

  RxList removedProfiles = <Map>[].obs;
  RxList profileDetails = <Map>[
    {
      "name": "Jumoke",
      "age": 25,
      "Location": "Lagos, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.profileImage,
      ]
    },
    {
      "name": "Blessing",
      "age": 27,
      "Location": "Delta, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
      ]
    },
    {
      "name": "Jumoke",
      "age": 25,
      "Location": "Lagos, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.profileImage,
      ]
    },
    {
      "name": "Blessing",
      "age": 27,
      "Location": "Delta, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
      ]
    },
    // {
    //   "name": "Amanda",
    //   "age": 30,
    //   "Location": "Ogun, Nigeria",
    //   "mediaType": "video",
    //   "mediaList": [
    //     'assets/videos/video1.mp4',
    //     'assets/videos/video2.mp4',
    //   ]
    // },
    {
      "name": "Jumoke",
      "age": 25,
      "Location": "Lagos, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
        AppImages.profileImage,
      ]
    },
    {
      "name": "Blessing",
      "age": 27,
      "Location": "Delta, Nigeria",
      "mediaType": "image",
      "mediaList": [
        AppImages.matchedFemaleImage, // You can mix videos later
        AppImages.profileImage,
        AppImages.matchesImage,
      ]
    },
  ].obs;

  VideoPlayerController? videoController;

  Future<void> initializeVideoController(String url) async {
    if (isVideo(url)) {
      print("---------- got here");

      videoController?.dispose(); // cleanup previous one if any

      videoController = VideoPlayerController.asset(url);
      // videoController = VideoPlayerController.networkUrl(Uri.parse(url));

      await videoController!.initialize(); // wait for init to complete

      if (videoController!.value.isInitialized) {
        if (autoPlayVideos) videoController!.play();
      }

      refresh(); // Notify UI
    } else {
      videoController?.dispose();
      videoController = null;
      refresh();
    }
  }

  bool isVideo(String url) {
    return url.endsWith(".mp4") || url.contains("https");
  }
}
