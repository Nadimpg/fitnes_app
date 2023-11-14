import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/container/custom_container.dart';
import '../../../widgets/image/custom_image.dart';
import '../../../widgets/text/custom_text.dart';

class ActivitySection extends StatefulWidget {
  const ActivitySection({super.key});

  @override
  State<ActivitySection> createState() => _ActivitySectionState();
}

class _ActivitySectionState extends State<ActivitySection> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomContainerCard(
                  marginRight: 16,
                  marginTop: 14,
                  paddingTop: 10,
                  paddingLeft: 14,
                  paddingRight: 14,
                  paddingBottom: 14,
                  decoration: BoxDecoration(
                      color: AppColors.whiteSmock,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  content: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Steps',
                        color: AppColors.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        top: 18,
                        bottom: 8,
                      ),
                      Stack(
                        children: [
                          Center(child: CustomImage(imageSrc: AppImages.step,imageType: ImageType.png,size: 95,)),
                          Positioned(
                            left: 60,
                            top: 30,
                            child: Column(
                              children: [
                                CustomText(
                                  text:'00',
                                  color: AppColors.primaryTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,

                                  bottom: 8,
                                ),
                                CustomText(
                                  text:'Steps',
                                  color: AppColors.secondaryTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,

                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  )),
            ),
            Expanded(
              child: CustomContainerCard(
                  marginTop: 14,
                  paddingTop: 10,
                  paddingLeft: 14,
                  paddingRight: 14,
                  paddingBottom: 10,
                  decoration: BoxDecoration(
                      color: AppColors.whiteSmock,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  content:  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Heart Rete',
                        color: AppColors.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        top: 16,
                        bottom: 8,
                      ),
                      Center(child: CustomImage(imageSrc: AppImages.heartRate,imageType: ImageType.png,size: 80,)),
                      Row(
                        children: [
                          CustomText(
                            text:'120',
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            right: 4,
                          ),
                          CustomText(
                            text:'bpm',
                            color: AppColors.secondaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,

                          ),
                        ],
                      ),

                    ],
                  )),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  CustomContainerCard(
                      marginRight: 16,
                      marginTop: 16,
                      paddingTop: 10,
                      paddingLeft: 14,
                      paddingRight: 14,
                      paddingBottom: 14,
                      decoration: BoxDecoration(
                          color: AppColors.whiteSmock,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      content:  const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Training',
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            top: 18,
                            bottom: 8,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text:'00.00',
                                color: AppColors.primaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                right: 4,
                              ),
                              CustomText(
                                text:'minutes',
                                color: AppColors.secondaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,

                              ),
                            ],
                          ),

                        ],
                      )),
                  CustomContainerCard(
                      marginRight: 16,
                      marginTop: 14,
                      paddingTop: 10,
                      paddingLeft: 14,
                      paddingRight: 14,
                      paddingBottom: 14,
                      decoration: BoxDecoration(
                          color: AppColors.whiteSmock,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      content:  const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Sleep',
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            top: 18,
                            bottom: 8,
                          ),
                          Center(child: CustomImage(imageSrc: AppImages.sleep,imageType: ImageType.png,size: 80,)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              CustomText(
                                text:'7.8',
                                color: AppColors.primaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                right: 4,
                              ),
                              CustomText(
                                text:'hours',
                                color: AppColors.secondaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,

                              ),
                            ],
                          ),

                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomContainerCard(
                      // marginRight: 15,
                      // width: 170,
                      // height: 170,
                      marginTop: 14,
                      paddingTop: 10,
                      paddingLeft: 10,
                      paddingRight: 10,
                      paddingBottom: 14,
                      decoration: BoxDecoration(
                          color: AppColors.whiteSmock,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      content:  const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Calories',
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            top: 18,
                            bottom: 8,
                          ),
                          Stack(
                            children: [
                              Center(child: CustomImage(imageSrc: AppImages.calories,imageType: ImageType.png,size: 95,imageColor: AppColors.red,)),
                              Positioned(
                                left: 65,
                                top: 30,
                                child: Column(
                                  children: [
                                    CustomText(
                                      text:'00',
                                      color: AppColors.primaryTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,

                                      bottom: 8,
                                    ),
                                    CustomText(
                                      text:'kcal',
                                      color: AppColors.secondaryTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,

                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      )),

                  CustomContainerCard(
                      marginTop: 20,
                      paddingTop: 20,
                      paddingLeft: 14,
                      paddingRight: 14,
                      paddingBottom: 16,
                      decoration: BoxDecoration(
                          color: AppColors.whiteSmock,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      content:  const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Distance',
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            top: 18,
                            bottom: 8,
                          ),

                          Row(
                            children: [
                              CustomText(
                                text:'00.00',
                                color: AppColors.primaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                right: 4,
                              ),
                              CustomText(
                                text:'minutes',
                                color: AppColors.secondaryTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,

                              ),
                            ],
                          ),

                        ],
                      )),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
