import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTopSection extends StatefulWidget {
  const HomeTopSection({super.key});

  @override
  State<HomeTopSection> createState() => _HomeTopSectionState();
}

class _HomeTopSectionState extends State<HomeTopSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: AppStrings.todayWorkoutPlan ,
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,

            ),
            CustomText(
              text: "Sep 16 Wed",
              color: AppColors.brandColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        const SizedBox(height: 16,),
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.workoutDailyPlanScren);
          },
          child: Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage(AppImages.workoutPlan,),
                    fit: BoxFit.fill

                )
            ),
            child: const Column (
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  left: 16,
                  text: "Day 01 - Warm UP",
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  left: 16,
                  bottom: 16,
                  text: "07:00 - 08:00 AM" ,
                  color: AppColors.brandColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
