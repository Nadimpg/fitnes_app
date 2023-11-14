import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
class BeginnerSection extends StatefulWidget {
  const BeginnerSection({super.key});

  @override
  State<BeginnerSection> createState() => _BeginnerSectionState();
}

class _BeginnerSectionState extends State<BeginnerSection> {
  List<Map<String , String>> category = [
    {
      "image": AppImages.fullBody ,
      "exerciseType": AppStrings.fullBodyStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.armMuscle,
      "exerciseType": AppStrings.armMuscleStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.armMuscle,
      "exerciseType": AppStrings.armMuscleStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.fullBody,
      "exerciseType": AppStrings.fullBodyStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.dumbbell,
      "exerciseType": AppStrings.dumbbellWeightlifting,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.legMuscle,
      "exerciseType": AppStrings.legMuscleStretch,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },

    {
      "image": AppImages.armMuscle,
      "exerciseType": AppStrings.armMuscleStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
    {
      "image": AppImages.armMuscle,
      "exerciseType": AppStrings.armMuscleStretching,
      "time":AppStrings.minutes,
      "level" : AppStrings.beginner,
    },
  ];
  bool isclicked= false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: List.generate(category.length, (index) =>  Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image:  DecorationImage(
                      image: AssetImage(category[index]["image"].toString(),),
                      fit: BoxFit.fill

                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column (
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        left: 16,
                        text: category[index]["exerciseType"].toString(),
                        color:AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          CustomText(
                            left: 16,
                            bottom: 12,
                            text: category[index]["time"].toString(),
                            color:AppColors.whiteSmock,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 8,left: 8,right: 8),
                            height: 12,color: AppColors.whiteColor,width: 2,),

                          CustomText(
                              bottom: 12,
                              text: category[index]["level"].toString(),
                              color: AppColors.whiteSmock,
                              fontSize: 8,
                              fontWeight: FontWeight.w500)
                        ],
                      )
                    ],
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      category==index;
                    });
                  }, icon:  Icon(Icons.bookmark_border_rounded,color:category==index? AppColors.brandColor:AppColors.whiteColor,))

                ],
              ),
            ))



            ),
          ),
        ),
      ],
    );
  }
}
