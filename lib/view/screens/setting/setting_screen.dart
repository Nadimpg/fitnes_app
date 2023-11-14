import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';


import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../rate_us/rate_us_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: CustomContainerCard(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 15,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                content: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 90,
            ),
            Text(
              'SETTING',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
     body:SingleChildScrollView(
       padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
       child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.changePasswordScreen);
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.changePassword,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.reminderScreen);
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.reminder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.termsOfServicesScreen);
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.termsOfServices,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.privacyPolicyScreen);
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.privacyPolicy,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context)=>
                        RateUsScreen()
                );
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.rateUs,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.languageScreen);
              },
              child: const CustomContainerCard(
                paddingBottom: 16,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1,color: AppColors.diviColor),
                    )
                ),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.language,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                    CustomImage(imageSrc: AppIcons.forwardButton,
                      size: 20,
                      imageType: ImageType.svg,
                      imageColor: AppColors.primaryTextColor,
                    )
                  ],
                ),),
            ),
          ],
        ),
     ),
    );
  }
}