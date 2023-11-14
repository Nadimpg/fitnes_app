import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/home/inner_widgets/advance_demo.dart';
import 'package:fitness/view/screens/home/inner_widgets/beginner_demo.dart';
import 'package:fitness/view/screens/home/inner_widgets/intermediate_demo.dart';
import 'package:fitness/view/screens/search/inner_widgets/recent_searches.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWorkoutLevelSec extends StatefulWidget {
  const SearchWorkoutLevelSec({super.key});

  @override
  State<SearchWorkoutLevelSec> createState() => _SearchWorkoutLevelSecState();
}

class _SearchWorkoutLevelSecState extends State<SearchWorkoutLevelSec> {
  List <String> levelCategory = ["Beginner","Intermediate","Advance"];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 16,),
        Row(
            children: List.generate(levelCategory.length, (index) =>   Expanded(
                child: CustomContainerCard(
                  onTap: (){
                    setState(() {
                      selectColor = index;
                    });
                  },
                  marginRight: 4,
                  marginLeft: 4,
                  paddingTop: 12,
                  paddingBottom: 12,
                  content: CustomText(text: levelCategory[index],color: selectColor==index? AppColors.whiteColor:AppColors.brandColor,fontSize: 12,fontWeight: FontWeight.w500,),
                  decoration: BoxDecoration(
                      color: selectColor==index? AppColors.brandColor:AppColors.whiteColor ,
                      border: Border.all(color: selectColor==index? AppColors.brandColor:AppColors.brandColor,width: 1),
                      borderRadius: BorderRadius.circular(4)
                  )
                  ,)
            ),)
        ),
        const SizedBox(height: 16,),
        SizedBox(height: 250,
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: AppStrings.recentSearches,
                color: AppColors.primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 8,),

              selectColor == 0? RecentSearches(): selectColor==1?RecentSearches():selectColor==2?RecentSearches():const SizedBox(),
            ],
          )
        )
      ],
    );
  }
}
