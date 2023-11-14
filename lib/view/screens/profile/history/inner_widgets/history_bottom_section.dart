import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class HistoryBottomSection extends StatefulWidget {
  const HistoryBottomSection({super.key});

  @override
  State<HistoryBottomSection> createState() => _HistoryBottomSectionState();
}

class _HistoryBottomSectionState extends State<HistoryBottomSection> {
  List<Map<String , String>> category = [
    {
      "icon": AppIcons.hearth,
      "title": AppStrings.heart,
      "unit" : "321 kcal",
      "percentage" : "+2%"
    },
    {
      "icon": AppIcons.fire,
      "title": AppStrings.weightLoss,
      "unit" : "8.9 kg",
      "percentage" : "+2%"
    },
    {
      "icon": AppIcons.fire,
      "title": AppStrings.calories,
      "unit" : "670 Kcal",
      "percentage" : "+3%"
    },
    {
      "icon": AppIcons.fire,
      "title": AppStrings.distance,
      "unit" : "4981 KM",
      "percentage" : "+2%"
    },
    {
      "icon": AppIcons.step,
      "title": AppStrings.step,
      "unit" : "1254 Kcal",
      "percentage" : "+5%"
    },
    {
      "icon": AppIcons.fire,
      "title": AppStrings.water,
      "unit" : "500 ml",
      "percentage" : "+5%"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5,
                mainAxisExtent: 110
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
                      Row(
                        children: [
                          CustomContainerCard(
                              paddingTop: 4,
                              paddingLeft: 4,
                              paddingRight: 4,
                              paddingBottom: 4,
                              marginBottom: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.whiteColor
                              ),
                              content: CustomImage(imageSrc: category[index]["icon"].toString(),size: 18,)),
                          CustomText(text: category[index]["title"].toString(),
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            bottom: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(text: category[index]["unit"].toString(),
                            color: AppColors.brandColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            right: 4,
                          ),
                          CustomText(text: category[index]["percentage"].toString(),
                            color: AppColors.brandColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ));
            }),
      ],
    );
  }
}
