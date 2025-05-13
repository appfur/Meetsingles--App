import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meet_singles/App/Chat/widget/chat_Icon_button.dart';
import 'package:meet_singles/App/Chat/widget/chat_menu_dialog.dart';
import 'package:meet_singles/App/Chat/widget/share_contact_bottom_sheet.dart';
import 'package:meet_singles/utils/icons.dart';
import '../../../config/theme/app_color.dart';
import '../../../utils/images.dart';
import '../../../widget/textwidget.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  String messageText = '';
  bool isPremium = true;
  bool addButtonTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        surfaceTintColor: AppColor.backgroundColor,
        titleSpacing: 0,
        // automaticallyImplyLeading: false,
        // leading: GestureDetector(
        //   child: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        //   onTap: () => Get.back(),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(AppImages.profileImage),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "John Doe",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextWidget(
                    text: "Online",
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            child: Icon(
              CupertinoIcons.phone_fill,
              color: AppColor.primaryColor,
              size: 20,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
            child: Icon(
              CupertinoIcons.videocam_fill,
              color: AppColor.primaryColor,
              size: 25,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
            child: Icon(
              Icons.more_horiz,
              color: AppColor.primaryColor,
            ),
            onTap: () {
              showChatMenuDialog(context, "Jumoke");
            },
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text("Today",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ),
                const SizedBox(height: 10),

                // Received Message
                _messageBubble(
                  message: "Hi Olamide",
                  time: "11:25 AM",
                  isSender: false,
                ),
                const SizedBox(height: 16),

                // Sent Message
                _messageBubble(
                  message: "Hello John",
                  time: "11:25 AM",
                  isSender: true,
                  isSeen: true,
                ),
                const SizedBox(height: 8),

                _messageBubble(
                  message:
                      "I'm active, Nice having you here\nHow can I help you today?",
                  time: "11:25 AM",
                  isSender: true,
                  isSeen: true,
                ),
                const SizedBox(height: 16),

                _messageBubble(
                  message: "I need your help with fixing my toilet pipes",
                  time: "11:25 AM",
                  isSender: false,
                ),
                const SizedBox(height: 8),

                // _imageMessageBubble(
                //   imageUrl: AppImages
                //       .onboardingImages1, // Replace with your actual image path
                //   time: "11:25 AM",
                //   isSender: false,
                // ),
              ],
            ),
          ),

          // Message Input Field
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              border: Border(
                top: BorderSide(color: AppColor.primaryColor.shade100),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              messageText = value;
                            });
                          },
                          cursorColor: AppColor.primaryColor,
                          decoration: InputDecoration(
                            hintText: "Type here.......",
                            hintStyle: const TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 40),
                            filled: true,
                            fillColor: AppColor.backgroundColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColor.primaryColor.shade100,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColor.primaryColor.shade100,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColor.primaryColor.shade100,
                              ),
                            ),
                            suffix: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 24, bottom: 0),
                                child: const Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    messageText.isNotEmpty
                        ? InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: AppColor.primaryColor,
                              child: Center(
                                child: SvgPicture.asset(
                                  AppSvgIcons.sendIcon,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          )
                        : Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // showUpgradePremiumDialog(context);
                                  if (isPremium) {
                                    addButtonTap = !addButtonTap;
                                    setState(() {});
                                  }
                                },
                                child: CircleAvatar(
                                  backgroundColor: addButtonTap
                                      ? AppColor.primaryColor
                                      : AppColor.whiteColor,
                                  radius: 28,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: addButtonTap
                                        ? AppColor.whiteColor
                                        : AppColor.primaryColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              addButtonTap
                                  ? const SizedBox()
                                  : InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundColor: AppColor.primaryColor,
                                        radius: 28,
                                        child: SvgPicture.asset(
                                          AppSvgIcons.voiceNoteIcon,
                                          color: AppColor.whiteColor,
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                  ],
                ),
                addButtonTap
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: ChatIconButton(
                                buttonText: "Camera",
                                textColor: AppColor.blackColor,
                                icon: Icon(
                                  Icons.video_camera_back,
                                  color: AppColor.primaryColor,
                                ),
                                onPressed: () {},
                              )),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: ChatIconButton(
                                buttonText: "Picture",
                                textColor: AppColor.blackColor,
                                icon: Icon(
                                  Icons.image,
                                  color: AppColor.primaryColor,
                                ),
                                onPressed: () {},
                              )),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: ChatIconButton(
                                buttonText: "Contact",
                                textColor: AppColor.blackColor,
                                icon: Icon(
                                  Icons.contact_phone,
                                  color: AppColor.primaryColor,
                                ),
                                onPressed: () {
                                  showShareContactBottomSheet(context);
                                },
                              )),
                            ],
                          ),
                        ],
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Chat Bubble Widget
  Widget _messageBubble(
      {required String message,
      required String time,
      required bool isSender,
      bool isSeen = false}) {
    return Column(
      children: [
        Align(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: isSender ? AppColor.primaryColor.shade50 : Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12),
                bottomLeft: isSender
                    ? const Radius.circular(12)
                    : const Radius.circular(0),
                bottomRight: isSender
                    ? const Radius.circular(0)
                    : const Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        isSender
            ? Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    if (isSender)
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                            Icon(Icons.done_all, color: Colors.blue, size: 16),
                      ),
                  ],
                ),
              )
            : Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }

  // Image Message Bubble
  // Widget _imageMessageBubble(
  //     {required String imageUrl,
  //     required String time,
  //     required bool isSender}) {
  //   return Align(
  //     alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //         color: Colors.white,
  //       ),
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.circular(8),
  //         child: Stack(
  //           children: [
  //             Image.asset(imageUrl, width: 240, height: 220, fit: BoxFit.cover),
  //             Positioned(
  //               bottom: 6,
  //               right: 10,
  //               child: Text(
  //                 time,
  //                 style: const TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 12,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
