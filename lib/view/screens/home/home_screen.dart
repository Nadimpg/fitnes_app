import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:fitness/view/screens/home/inner_widgets/home_top_section.dart';
import 'package:fitness/view/screens/home/inner_widgets/home_trainer_section.dart';
import 'package:fitness/view/screens/home/inner_widgets/workout_level_sec.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/row/custom_text_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: CustomAppBar(
          appBarHeight: 76,
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomNavBar(currentIndex: 3)));
                    },
                    child: CircleAvatar(

                    ),
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    flex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Hello Shane',
                            style: GoogleFonts.roboto(
                              color:  AppColors.primaryTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Text(
                            'Good Morning',
                            style: GoogleFonts.openSans(
                              color: AppColors.secondaryTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],

                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.notificationScreen);
                },
                child: Stack(
                  children: [
                    const CustomImage(
                      imageColor: AppColors.primaryTextColor,
                      imageType: ImageType.svg,
                      imageSrc: AppIcons.notificaton,),
                    Positioned(
                      top:0,
                      right: 0,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                            color: AppColors.red,
                            shape: BoxShape.circle

                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
          child: ListView(
            children: [
              const HomeTopSection(),
              const SizedBox(height: 24,),
              const WorkoutLevelSec(),
              const SizedBox(height: 16,),
              // const HomeBottomSection(),
              const SizedBox(height: 24,),
              CustomTextRow(
                  onTap: (){
                    Get.toNamed(AppRoutes.trainerScreen);
                  },
                  leftText: AppStrings.trainer, rightText: AppStrings.seeAll),
              const SizedBox(height: 8,),
              const HomeTrainerSection()
            ],
          ),
        ),
      ),
    );
  }
}
