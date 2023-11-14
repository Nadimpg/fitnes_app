import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/home/inner_widgets/advance_demo.dart';
import 'package:fitness/view/screens/home/inner_widgets/beginner_demo.dart';
import 'package:fitness/view/screens/home/inner_widgets/intermediate_demo.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/row/custom_text_row.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutLevelSec extends StatefulWidget {
  const WorkoutLevelSec({super.key});

  @override
  State<WorkoutLevelSec> createState() => _WorkoutLevelSecState();
}

class _WorkoutLevelSecState extends State<WorkoutLevelSec> {
  List <String> levelCategory = ["Beginner","Intermediate","Advance"];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         CustomTextRow(
            onTap: (){
              Get.toNamed(AppRoutes.workoutLevelScreen);
            },
            leftText: AppStrings.workoutLevels, rightText: AppStrings.seeAll),
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
        SizedBox(height: 16,),
        Container(height: 160,
          child:  selectColor == 0? BeginnerDemo(): selectColor==1?IntermediatDemo():selectColor==2?AdvanceDemo():SizedBox(),
        )
      ],
    );
  }
}
