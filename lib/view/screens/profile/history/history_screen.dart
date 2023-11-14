import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/profile/history/inner_widgets/history_bar_chart.dart';
import 'package:fitness/view/screens/profile/history/inner_widgets/history_bottom_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/container/custom_container.dart';
import '../../../widgets/image/custom_image.dart';
import '../../../widgets/text/custom_text.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  LabelLayoutStrategy? xContainerLabelLayoutStrategy;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: CustomContainerCard(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 15,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ), content: const Icon(Icons.arrow_back_ios_new,size: 12,),
              ),
            ),
            const SizedBox(width: 90,),
            Text('HISTORY',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints constraints)=>
                 const SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: '12,252',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryTextColor,
                              bottom: 4,
                            ),
                            CustomText(
                              text: AppStrings.averageSteps,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondaryTextColor,
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            CustomText(
                              text: '1,124',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryTextColor,
                              bottom: 4,
                            ),
                            CustomText(
                              text: AppStrings.moreThanLastWeek,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondaryTextColor,

                            ),
                          ],
                        ),
                        CustomContainerCard(
                          paddingBottom: 6,
                            paddingRight: 6,
                            paddingLeft: 6,
                            paddingTop: 6,
                            decoration: BoxDecoration(
                              color: AppColors.whiteSmock
                            ),
                            content: Row(
                          children: [
                            CustomText(
                              text: AppStrings.lastWeak,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondaryTextColor,
                              right: 4,
                            ),
                            CustomImage(imageSrc: AppIcons.forwardButton,imageColor: AppColors.secondaryTextColor,)
                          ],
                        ))
                      ],
                    ),
                    SizedBox(height: 16,),
                    Stack(
                      children: [
                        CustomImage(imageSrc: AppImages.chart,imageType: ImageType.png,),
                        Positioned(
                          right: 0,
                          bottom: -80,
                          child: CustomImage(imageSrc: AppImages.statistics,imageType: ImageType.png,size: 300,),)
                      ],
                    ),
                    HistoryBottomSection()
                  ],
                ),
              )
      ),
    ));
  }
}
