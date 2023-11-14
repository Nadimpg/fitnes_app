import 'package:fitness/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentSearches extends StatelessWidget {
   RecentSearches({super.key});

  List workoutType =  ["Abdominal","Full Body","Yoga Exercise","Aquat Movement","Dumbbell","Leg Exercise","Yoga Exercise","Aquat Movement","Dumbbell","Leg Exercise"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(workoutType.length, (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                workoutType[index],
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  color: AppColors.secondaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(child: const Icon(Icons.close_rounded,color: AppColors.silverChalice,size: 18,))
            ],
            ),
          ),
          )
        ),
      ),
    );
  }
}
