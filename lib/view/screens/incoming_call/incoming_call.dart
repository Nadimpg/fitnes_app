import 'dart:math';

import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/call_vid_ui.dart/call_vid_ui.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IncomingCall extends StatefulWidget {
  const IncomingCall({super.key});

  @override
  State<IncomingCall> createState() => _IncomingCallState();
}

class _IncomingCallState extends State<IncomingCall> {
  double left = 0;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return CallVidScreenCustom(
        isback: true,
        isMsg: true,
        bottomNavWidget: GestureDetector(
          onPanUpdate: (details) async {
            left = max(0, left + details.delta.dx);
            if (left >= width / 2) {
              left = 0;
              Get.toNamed(AppRoutes.audioCall);
            }
            setState(() {});
          },
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 54),
            decoration: BoxDecoration(
                gradient: AppColors.bottomColor,
                borderRadius: BorderRadius.circular(16)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    left: left,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: AppColors.whiteColor, shape: BoxShape.circle),
                      child: const CustomImage(
                        imageSrc: AppIcons.call,
                        imageColor: AppColors.linear,
                      ),
                    )),
                Positioned(
                  child: left < 7
                      ? const CustomText(
                          top: 10,
                          bottom: 10,
                          fontSize: 18,
                          color: AppColors.whiteColor,
                          text: AppStrings.slideToAnswer,
                        )
                      : const CustomText(
                          top: 24,
                          bottom: 24,
                          fontSize: 18,
                          color: AppColors.whiteColor,
                          text: "",
                        ),
                ),
              ],
            ),
          ),
        ),
        onSwipe: () {},
        subTitle: AppStrings.incomingCall);
  }
}
