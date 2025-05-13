import 'package:flutter/material.dart';
import 'package:meet_singles/App/DiscoverNow/widget/discover_now_room_widget.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/widget/textwidget.dart';

class DiscoverNowRoomView extends StatelessWidget {
  final String roomName;
  const DiscoverNowRoomView({super.key, required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        centerTitle: true,
        title: TextWidget(
          text: roomName,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: TextWidget(
              text: "Leave Room",
              color: AppColor.redColor,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 80),
        child: DiscoverNowRoomWidget(),
        // DashboardScanning()
      ),
    );
  }
}
