import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatefulWidget {
  final String time;
  final String text;
  final bool isMe;
  final VoidCallback onpress;
  const MessageBubble(
      {super.key,
      required this.time,
      required this.text,
      required this.isMe,
      required this.onpress});

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.isMe == false)
                const CustomImage(
                  size: 36,
                  imageSrc: AppImages.profileImage,
                  imageType: ImageType.png,
                ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onLongPress: () {
                      widget.onpress();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.whiteColor, width: 1),
                        color: widget.isMe
                            ? AppColors.linear
                            : AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: widget.isMe
                              ? const Radius.circular(8)
                              : const Radius.circular(0),
                          bottomLeft: const Radius.circular(8),
                          bottomRight: const Radius.circular(8),
                          topRight: widget.isMe == false
                              ? const Radius.circular(8)
                              : const Radius.circular(0),
                        ),
                      ),
                      child: CustomText(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        text: widget.text,
                        color: widget.isMe
                            ? AppColors.whiteColor
                            : AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomText(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    text: widget.time,
                    color: AppColors.primaryTextColor,
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              if (widget.isMe)
                const CustomImage(
                  size: 36,
                  imageSrc: AppImages.profileImage,
                  imageType: ImageType.png,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
