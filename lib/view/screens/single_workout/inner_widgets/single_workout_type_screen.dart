import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleWorkoutTypeSreen extends StatefulWidget {
  const SingleWorkoutTypeSreen({super.key});

  @override
  State<SingleWorkoutTypeSreen> createState() => _SingleWorkoutTypeSreenState();
}
class _SingleWorkoutTypeSreenState extends State<SingleWorkoutTypeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarContent: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
              decoration: BoxDecoration(color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Text(
            "SINGLE wORKOUT".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color:  AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox()
        ],)),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(

                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Column(children: List.generate(20, (index) =>Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(image: AssetImage(AppImages.armMuscle),fit: BoxFit.fill),
                                ),
                              ),
                              const SizedBox(width: 8 ,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Biceps curls',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                      color: AppColors.primaryTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/images/dumble.svg"),
                                        const SizedBox(width: 4,),
                                        Text(
                                          '3 sets',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            color: AppColors.secondaryTextColor,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Intermediate',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: const Color(0xFF6943FF),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
