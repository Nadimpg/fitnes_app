import 'dart:math';
import 'dart:ui';


import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../image/custom_image.dart';

class CallVidScreenCustom extends StatefulWidget {
  final VoidCallback? onSwipe;
  final VoidCallback? onBack;

  final bool isBlur;
  final bool isMsg;
  final Color backButtonColor;
  final bool isback;
  final bool isCenterWidget;
  final bool ispopUpWidget;

  final Widget? bottomNavWidget;
  final String subTitle;

  const CallVidScreenCustom(
      {super.key,
      required this.onSwipe,
      this.onBack,
      this.isBlur = true,
      this.isback = true,
      this.isCenterWidget = true,
      this.ispopUpWidget = false,
      this.bottomNavWidget,
      required this.subTitle,
      this.isMsg = false,
      this.backButtonColor = AppColors.whiteColor});

  @override
  State<CallVidScreenCustom> createState() => _CallVidScreenCustomState();
}

class _CallVidScreenCustomState extends State<CallVidScreenCustom> {
  double left = 0;
  double dragabbleHorizontal = 20;
  double dragabbleVerticel = 70;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: widget.bottomNavWidget,
        body: Stack(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Image.asset(
                fit: BoxFit.cover,
                AppImages.profileImage2,
              ),
            ),
            if (widget.isBlur)
              Opacity(
                opacity: 0.8,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(gradient:AppColors.theme),
                ),
              ),

            if (widget.isback)
              Positioned(
                top: 64,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios_new,color:Colors.white,)
                ),
              ),
            if (widget.isCenterWidget)
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 126,
                          width: 126,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    AppImages.profileImage,
                                  ))),
                        ),
                        const CustomText(
                          fontSize: 24,
                          text: "Kathryn Murphy",
                          color: AppColors.whiteColor,
                          top: 16,
                          bottom: 12,
                        ),
                        CustomText(
                          text: widget.subTitle,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
