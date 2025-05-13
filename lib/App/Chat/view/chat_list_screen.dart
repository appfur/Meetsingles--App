import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_singles/App/Chat/view/chat_view.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'package:meet_singles/utils/images.dart';
import 'package:meet_singles/widget/textwidget.dart';

class ChatListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = List.generate(
      5,
      (index) => {
            "name": "Jumoke, 27",
            "message": "Hey, how’s your day? 😊",
            "time": "Just Now",
            "verified": index % 2 == 0, // Some users are verified
            "isOnline": index == 0, // One user is online
          });

  ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Your Matches Section
              const TextWidget(
                text: "Your Matches",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 4),
              const TextWidget(
                text: "Here are your most recent matches.",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 16),

              // Matches List
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(AppImages.profileImage),
                          ),
                          if (index == 0) // Show green dot if user is online
                            Positioned(
                              bottom: 8,
                              right: 2,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border: Border.fromBorderSide(BorderSide(
                                      color: Colors.white, width: 2)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Messages Section
              const TextWidget(
                text: "Messages",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 16),

              // Messages List
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => ChatView());
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                        AppImages.profileImage,
                                      ),
                                    ),
                                    if (msg['isOnline'])
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Colors.white,
                                                    width: 2)),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            msg['name'],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          if (msg['verified'])
                                            const Icon(Icons.verified,
                                                color: Colors.purple, size: 16),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      TextWidget(
                                        text: msg['message'],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      msg['time'],
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    const SizedBox(height: 8),
                                    const CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.purple),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Divider(
                              color: AppColor.backgroundColor,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
