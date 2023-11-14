
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'inner_widget/chat_bubble.dart';
import 'inner_widget/input_field.dart';
import 'inner_widget/message_model.dart';

enum SampleItem { itemOne, itemTwo, itemThree, four, five }

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isMuted = false;

  bool isInputField = true;
  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Message> messages = [
    Message('03.20', 'Hello!', false),
    Message('11.05', 'Hi there!', true),
    Message('08.25', 'How are you?', false),
  ];

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.extentTotal,
      duration: const Duration(milliseconds: 50),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: GroupChatAppBar(
            ontap: () {
              setState(() {
                isMuted = !isMuted;
                navigator!.pop();
              });
            },
          ),
          body: Column(
            children: [
              // if (isMuted)
              //   MuteNotification(ontap: () {
              //     setState(() {
              //       isMuted = !isMuted;
              //     });
              //   }),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final message = messages[index];

                      return MessageBubble(
                        onpress: () {
                          // setState(() {
                          //   isInputField = !isInputField;
                          // });
                        },
                        time: message.sender,
                        text: message.text,
                        isMe: message.isMe,
                      );
                    },
                  ),
                ),
              ),
               InputField(
                      controller: messageController,
                      onTap: () {
                        if (messageController.text == "") {
                        } else {
                          TimeOfDay currentTime = TimeOfDay.now();
                          messages.add(
                            Message(currentTime.format(context).toString(),
                                messageController.text, true),
                          );
                          setState(() {
                            _scrollToBottom();
                            messageController.clear();
                          });
                        }
                      },
                    )

            ],
          ),
        ));
  }
}

class GroupChatAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback ontap;
  const GroupChatAppBar({Key? key, required this.ontap}) : super(key: key);

  @override
  State<GroupChatAppBar> createState() => _GroupChatAppBarState();

  @override
  @override
  Size get preferredSize => const Size(double.infinity, 64);
}

class _GroupChatAppBarState extends State<GroupChatAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.only(
            start: 20, top: 24, end: 20, bottom: 0),
        alignment: Alignment.centerLeft,
        // decoration: const BoxDecoration(
        //   gradient: AppColors.theme,
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios_new,
                      size: 18, color: AppColors.brandColor),
                ),
                const SizedBox(width: 12,),
                const CustomImage(
                  size: 44,
                  imageSrc: AppImages.profileImage,
                  imageType: ImageType.png,
                ),
                const SizedBox(width: 12,),
                const Padding(
                  padding:EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        color: AppColors.primaryTextColor,
                        left: 8,
                        right: 8,
                        text: "Kathryn Murphy",
                        fontSize: 18,
                      ),
                      CustomText(
                        color: AppColors.primaryTextColor,
                        left: 8,
                        right: 8,
                        text: "Active now",
                        fontSize: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(AppRoute.incomingCall);
                  },
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Stack(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xFF8769FF), Color(0xFF6943FF)],
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          const Positioned(
                            left: 4,
                            top: 4,
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: CustomImage(
                                  imageColor: AppColors.whiteColor,
                                  imageSrc: AppIcons.call,
                                  imageType: ImageType.svg,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ]
            ),

          ],
        ),
      ),
    );
  }
}
