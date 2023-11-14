import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class DailyReportProgress extends StatefulWidget {
  const DailyReportProgress({super.key});

  @override
  State<DailyReportProgress> createState() => _DailyReportProgressState();
}

class _DailyReportProgressState extends State<DailyReportProgress> {
  List<Map<String , String>> category = [
    {
      "icon": AppIcons.fire,
      "title": AppStrings.kcalBurnt,
      "unit" : "321 kcal",
    },
    {
      "icon": AppIcons.hearth,
      "title": AppStrings.hearthRate,
      "unit" : "80 Bpm",
    },
    {
      "icon": AppIcons.protein,
      "title": AppStrings.protein,
      "unit" : "20.5 kcal",
    },
    {
      "icon": AppIcons.step,
      "title": AppStrings.step,
      "unit" : "1237 kcal",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: AppStrings.progress,
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            CustomText(text: AppStrings.today,
              color: AppColors.brandColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5,
                mainAxisExtent: 160
            ),
            itemCount: category.length,
            itemBuilder: (BuildContext context,index){
              return CustomContainerCard(
                  marginTop: 20,
                  paddingTop: 10,
                  paddingLeft: 10,
                  paddingRight: 10,
                  paddingBottom: 10,
                  decoration: BoxDecoration(
                      color: AppColors.whiteSmock,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  content:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomContainerCard(
                          paddingTop: 4,
                          paddingLeft: 4,
                          paddingRight: 4,
                          paddingBottom: 4,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.whiteColor
                          ),
                          content: CustomImage(imageSrc: category[index]["icon"].toString(),size: 18,)),
                      CustomText(text: category[index]["title"].toString(),
                        color: AppColors.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        top: 18,
                        bottom: 8,
                      ),
                      CustomText(text: category[index]["unit"].toString(),
                        color: AppColors.brandColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        top: 18,
                        bottom: 8,
                      ),
                    ],
                  ));
            }),
      ],
    );
  }
}
