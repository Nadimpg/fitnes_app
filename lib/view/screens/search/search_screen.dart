import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/search/inner_widgets/recomanded_workout_section.dart';
import 'package:fitness/view/screens/search/inner_widgets/search_level_section.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:fitness/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20,end:20,top: 24,bottom: 24),
          child: Column(
            children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: AppColors.brandColor,
                filled: true,
                fillColor: const Color(0xffF3F0FF)
              ),
            ),
              const SearchWorkoutLevelSec(),
              const SizedBox(height: 24,),
              //recommended searches
              const CustomText(
                text: AppStrings.recommendWorkouts,
                color: AppColors.primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 16,),
              const RecomandedWorkoutSection()
            ],
          ),
        ),
      ),
    );
  }
}
