import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/single_workout/inner_widgets/single_workout_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutTypeSection extends StatefulWidget {
  const WorkoutTypeSection({super.key});

  @override
  State<WorkoutTypeSection> createState() => _WorkoutTypeSectionState();
}

class _WorkoutTypeSectionState extends State<WorkoutTypeSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Column(children: List.generate(20, (index) =>GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SingleWorkoutTypeSreen()));
              },
              child: Container(
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
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          color: AppColors.brandColor,
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.add,color: AppColors.whiteColor,),
                    )
                  ],
                ),
              ),
            )
            ),
            ),
          ],
        ),
      ),
    );
  }
}
