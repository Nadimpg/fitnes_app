import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class ProfileBottomSection extends StatefulWidget {
  const ProfileBottomSection({super.key});

  @override
  State<ProfileBottomSection> createState() => _ProfileBottomSectionState();
}

class _ProfileBottomSectionState extends State<ProfileBottomSection> {
  List<String> fitnessPlan=[AppStrings.dailyMealPlan,AppStrings.dailyWorkoutChallenge,AppStrings.dailyReport,];
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.editProfileScreen);
          },
          child:   const CustomContainerCard(
            paddingBottom: 16,paddingTop: 16,

            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1,color: AppColors.diviColor),
                )
            ),
            content:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppStrings.editProfile,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor,
                ),
                CustomImage(imageSrc: AppIcons.forwardButton,
                  size: 20,
                  imageType: ImageType.svg,
                  imageColor: AppColors.primaryTextColor,
                )
              ],
            ),),
        ),
        GestureDetector(
          onTap: (){
              Get.toNamed(AppRoutes.notificationScreen);
          },
          child: const CustomContainerCard(
            paddingBottom: 16,
            paddingTop: 16,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1,color: AppColors.diviColor),
                )
            ),
            content:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppStrings.notifications,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor,
                ),
                CustomImage(imageSrc: AppIcons.forwardButton,
                  size: 20,
                  imageType: ImageType.svg,
                  imageColor: AppColors.primaryTextColor,
                )
              ],
            ),),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              isClicked =! isClicked;
            });
          },
          child:  CustomContainerCard(
              paddingBottom: 16,
              paddingTop: 16,
              decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1,color: AppColors.diviColor),
                  )
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: AppStrings.myFitnessPlan,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTextColor,
                      ),
                      CustomImage(imageSrc: isClicked ? AppIcons.downButton : AppIcons.forwardButton,
                        size: 20,
                        imageType: ImageType.svg,
                        imageColor: AppColors.primaryTextColor,
                      )
                    ],
                  ),
                  isClicked ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(fitnessPlan.length, (index) =>
                        GestureDetector(
                          onTap: (){
                            if(index==0){
                              Get.toNamed(AppRoutes.dailyMealPlanScreen);
                            }
                            else if(index==1){
                              Get.toNamed(AppRoutes.dailyWorkoutScreen);
                            }
                            else if(index==2){
                              Get.toNamed(AppRoutes.dailyReportScreen);
                            }

                          },
                          child: CustomText(
                            text: fitnessPlan[index],
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: AppColors.secondaryTextColor,
                            top: 10,
                          ),
                        )
                    ),
                  ) : const SizedBox()
                ],
              )
          ),
        ),
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.historyScreen);
          },
          child: const CustomContainerCard(
            paddingBottom: 16,
            paddingTop: 16,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1,color: AppColors.diviColor),
                )
            ),
            content:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppStrings.history,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor,
                ),
                CustomImage(imageSrc: AppIcons.forwardButton,
                  size: 20,
                  imageType: ImageType.svg,
                  imageColor: AppColors.primaryTextColor,
                )
              ],
            ),),
        ),
        GestureDetector(
          onTap: (){

          },
          child:  CustomContainerCard(
            onTap: (){
              Get.toNamed(AppRoutes.settingScreen);
            },
            paddingBottom: 16,
            paddingTop: 16,
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1,color: AppColors.diviColor),
                )
            ),
            content:  const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppStrings.settings,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor,
                ),
                CustomImage(imageSrc: AppIcons.forwardButton,
                  size: 20,
                  imageType: ImageType.svg,
                  imageColor: AppColors.primaryTextColor,
                )
              ],
            ),),
        ),
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: (){

          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImage(imageSrc: AppIcons.logout),
              CustomText(
                text: AppStrings.logout,
                left: 14,
                color: AppColors.red,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                top: 4,
              )
            ],
          ),
        ),
      ],
    );
  }
}
