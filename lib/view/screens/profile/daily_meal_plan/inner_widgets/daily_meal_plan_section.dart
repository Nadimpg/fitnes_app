import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class DailyMealPlanSection extends StatefulWidget {
  const DailyMealPlanSection({super.key});

  @override
  State<DailyMealPlanSection> createState() => _DailyMealPlanSectionState();
}

class _DailyMealPlanSectionState extends State<DailyMealPlanSection> {
  List<Map<String , String>> category = [
    {
      "image": AppImages.steakEgg,
      "title": 'Steak And Eggs',
      "type":"Breakfast",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },
    {
      "image": AppImages.leanSteak,
      "title": 'Lean Steak And Kale',
      "type":"Lunch",
      "recentTime": "396 Kcal  40 C  26 P 24 F"
    },
    {
      "image": AppImages.dinnerSalad,
      "title": 'Dinner salad',
      "type":"dinner",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },
    {
      "image": AppImages.vegetableRice,
      "title": 'Vegetable Rice',
      "type":"snaks",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },
    {
      "image": AppImages.steakEgg,
      "title": 'Steak And Eggs',
      "type":"Breakfast",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },
    {
      "image": AppImages.leanSteak,
      "title": 'Lean Steak And Kale',
      "type":"Lunch",
      "recentTime": "396 Kcal  40 C  26 P 24 F"
    },
    {
      "image": AppImages.dinnerSalad,
      "title": 'Dinner salad',
      "type":"dinner",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },
    {
      "image": AppImages.vegetableRice,
      "title": 'Vegetable Rice',
      "type":"snaks",
      "recentTime": "461 Kcal  40 C  26 P  24 F"
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(category.length, (index) =>
          CustomContainerCard(
              marginTop: 16,
              paddingBottom: 15,
              paddingRight: 15,
              paddingLeft: 15,
              paddingTop: 15,
              decoration: ShapeDecoration(
                color: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 15,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              content: Row(
                children: [
                  CustomContainerCard(
                      paddingTop: 15,
                      paddingLeft: 11,
                      paddingRight: 11,
                      paddingBottom: 15,
                      decoration:BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(8)
                      ) ,
                      content: CustomImage(imageSrc:category[index]["image"].toString(),imageType: ImageType.png,size: 50,) ),
                  SizedBox(width: 14,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text:category[index]["title"].toString() ,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,
                        bottom: 8,
                      ),
                      CustomContainerCard(
                          paddingTop: 4,
                          paddingLeft: 10,
                          paddingRight: 10,
                          paddingBottom: 4,
                          decoration:BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius: BorderRadius.circular(8)
                          ) ,
                          content: CustomText(
                            text:category[index]["type"].toString(),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,


                          ) ),
                      CustomText(
                        text: category[index]["recentTime"].toString(),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondaryTextColor,
                        top: 8,
                      ),

                    ],
                  )
                ],
              ))
      ),
    );
  }
}
