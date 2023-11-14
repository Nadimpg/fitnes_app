import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({super.key});

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: AppStrings.today,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryTextColor,
          bottom: 20,
        ),
        CustomContainerCard(
            marginBottom: 16,
            decoration: BoxDecoration(
                color:const Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(8)
            ),
            paddingTop: 16,
            paddingLeft: 16,
            paddingRight: 16,
            paddingBottom: 16,
            content:  const Row(
              children: [
                CustomImage(imageSrc: AppImages.congrates,imageType: ImageType.png,size: 70,),
                SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: AppStrings.congratulations,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,
                        bottom: 6,
                      ),
                      CustomText(
                        text: AppStrings.youHaveCompletedWorkoutDay1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryTextColor,
                        bottom: 6,
                      ),
                      CustomText(
                        text: '2m age',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.silverChalice,
                      ),
                    ],
                  ),
                )
              ],
            )
        ),
        CustomContainerCard(
            marginBottom: 20,
            decoration: BoxDecoration(
                color:const Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(8)
            ),
            paddingTop: 16,
            paddingLeft: 16,
            paddingRight: 16,
            paddingBottom: 16,
            content: const Row(
              children: [
                CustomImage(imageSrc: AppImages.newAdded,imageType: ImageType.png,size: 70,),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: AppStrings.newWorkoutAdded,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: AppStrings.checkNowAndPractice,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: '21m age',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.silverChalice,
                    ),
                  ],
                )
              ],
            )
        ),
        const CustomText(
          text: AppStrings.yesterday,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryTextColor,
          bottom: 20,
        ),
        CustomContainerCard(
            marginBottom: 20,
            decoration: BoxDecoration(
                color:const Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(8)
            ),
            paddingTop: 16,
            paddingLeft: 16,
            paddingRight: 16,
            paddingBottom: 16,
            content: const Row(
              children: [
                CustomImage(imageSrc: AppImages.missedWork,imageType: ImageType.png,size: 70,),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: AppStrings.missedWorkout,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: AppStrings.youHave1MissedWorkout,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: '2 hr age',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.silverChalice,
                    ),
                  ],
                )
              ],
            )
        ),
        const CustomText(
          text: 'September 2023',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryTextColor,
          bottom: 20,
          top: 20,
        ),
        CustomContainerCard(
            marginBottom: 16,
            decoration: BoxDecoration(
                color:const Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(8)
            ),
            paddingTop: 16,
            paddingLeft: 16,
            paddingRight: 16,
            paddingBottom: 16,
            content: const Row(
              children: [
                CustomImage(imageSrc: AppImages.congrates,imageType: ImageType.png,size: 70,),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: AppStrings.verificationSuccessful,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: AppStrings.accountVerificationComplete,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryTextColor,
                      bottom: 6,
                    ),
                    CustomText(
                      text: '24m age',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.silverChalice,
                    ),
                  ],
                )
              ],
            )
        ),
      ],
    );
  }
}
