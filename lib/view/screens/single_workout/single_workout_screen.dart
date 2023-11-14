import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/single_workout/inner_widgets/workout_type_section.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleWorkoutScreen extends StatefulWidget {
  const SingleWorkoutScreen({super.key});

  @override
  State<SingleWorkoutScreen> createState() => _SingleWorkoutScreenState();
}

class _SingleWorkoutScreenState extends State<SingleWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 342,
            width: MediaQuery.of(context).size.width,
            decoration:BoxDecoration(
              image: DecorationImage(
                 image:AssetImage(AppImages.day_1),
                fit: BoxFit.fill,
              )
            ),
          ),
          Positioned(
            top: 50,
            left: 24,
            child: GestureDetector(
              onTap: (){
                Get .back();
              },
              child: Container(
                padding:  const EdgeInsets.all(8),
                child:  const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
          Positioned(
             top: 270,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Day 1 - Full Body',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors.primaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ), Text(
                   'In this section, we will focus on training on the chest and \nlegs with intermediate training intensity.',
                    style: GoogleFonts.openSans(
                   color: AppColors.primaryTextColor,
                   fontSize: 12,
                   fontWeight: FontWeight.w500,
                    ),
                 ),
                 const SizedBox(height: 8,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         SvgPicture.asset("assets/images/dumble.svg"),
                         SizedBox(width: 4,),
                         const CustomText(
                           text: "Lose Weight",
                           color:AppColors.secondaryTextColor,
                           fontWeight: FontWeight.w500,
                         )
                       ],
                     ),
                     const Row(
                       children: [
                         Icon(Icons.watch_later_outlined,color: AppColors.brandColor,size: 18,),
                         SizedBox(width: 4,),
                         CustomText(
                           text: "29 min",
                           color:AppColors.secondaryTextColor,
                           fontWeight: FontWeight.w500,
                         )
                       ],
                     ),
                     const Row(
                       children: [
                         Icon(Icons.local_fire_department,color: AppColors.brandColor,),
                         SizedBox(width: 4,),
                         CustomText(
                           text: "330 kcal",
                           color:AppColors.secondaryTextColor,
                           fontWeight: FontWeight.w500,
                         )
                       ],
                     ),
                   ],
                 ),
                   const SizedBox(height: 16,),
                  const WorkoutTypeSection(),

                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavButton(buttonText: "Start Exercise", onTap: (){
        Get.toNamed(AppRoutes.biceps_screen);
      }),
    );
  }
}
