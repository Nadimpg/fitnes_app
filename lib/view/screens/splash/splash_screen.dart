import 'dart:async';

import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Timer(const Duration(seconds: 3), () {
        Get.toNamed(AppRoutes.sliderScreen);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
           Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment(1.00, 0.00),
                   end: Alignment(-1, 0),
                 colors: [
                   Color(0xFF6943FF),
                   Color(0xFF8769FF),
                 ]
               )
             ),
             child: const Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Center(
                   child: Column(
                     children: [
                       CustomImage(imageSrc: AppIcons.splashLogo),
                       CustomText(
                         text: AppStrings.fitTrack,
                         fontSize: 42,
                         color: AppColors.whiteColor,
                         fontWeight: FontWeight.w700,
                         top: 15,
                         bottom: 150,
                       ),
                       CustomImage(
                           imageSrc: AppIcons.loading,
                       )
                     ],
                   ),
                 )
               ],
             ),
           )
      ),
    ));
  }
}
