
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/view/widgets/call_vid_ui.dart/call_vid_ui.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AudioCall extends StatefulWidget {
  const AudioCall({super.key});

  @override
  State<AudioCall> createState() => _AudioCallState();
}


  class _AudioCallState extends State<AudioCall> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CallVidScreenCustom(

        bottomNavWidget: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 14),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 54),
          decoration: BoxDecoration(
              gradient: AppColors.bottomColor,
              borderRadius: BorderRadius.circular(14)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Specker Icon
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.whiteColor),
                  child: const CustomImage(
                      imageColor: AppColors.brandColor,
                      size: 16,
                      imageSrc: AppIcons.speaker
                ),),
              ),
              //Remove Icon
              GestureDetector(
                onTap: () {
                  // Get.offNamed(AppRoute.groupChat);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.red),
                  child: const CustomImage(
                      size: 16,
                      imageColor: AppColors.whiteColor,
                      imageSrc: AppIcons.cancel),
                ),
              ),
              //Microphone Icon
               GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.whiteColor),
                  child: const CustomImage(
                      imageColor: AppColors.brandColor,
                      imageSrc: AppIcons.sound),
                ),
              ),

            ],
          ),
        ),
        onSwipe: () {},
        subTitle: "20:10");
  }
}
