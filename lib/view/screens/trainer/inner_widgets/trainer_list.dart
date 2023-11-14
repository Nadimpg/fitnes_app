import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainerList extends StatefulWidget {
  const TrainerList({super.key});

  @override
  State<TrainerList> createState() => _TrainerListState();
}

class _TrainerListState extends State<TrainerList> {
  List<Map<String , String>> category = [
    {
      "image": AppImages.trainer_1,
      "trainerName": AppStrings.richardWill,
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.intermediate,
    },
    {
      "image": AppImages.trainer_2,
      "trainerName": "Humayun"           ,
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.experience,
    },
    {
      "image": AppImages.trainer_3,
      "trainerName": "John Roue",
      "trainingLevel": AppStrings.armMuscleStretching,
      "experience" : AppStrings.intermediate,
    },
    {
      "image": AppImages.trainer_3,
      "trainerName": "Piyash",
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.experience,
    },
    {
      "image": AppImages.trainer_4 ,
      "trainerName": AppStrings.richardWill,
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.intermediate,
    },
    {
      "image": AppImages.trainer_5,
      "trainerName": "Nadim",
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.experience,
    },
    {
      "image": AppImages.trainer_6,
      "trainerName": "Jubayed",
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.experience,
    },
    {
      "image": AppImages.trainer_2,
      "trainerName": AppStrings.richardWill,
      "trainingLevel":AppStrings.highIntensityTraining,
      "experience" : AppStrings.experience,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(category.length , (index) =>   CustomContainerCard(
              onTap: (){
                Get.toNamed(AppRoutes.trainerDetailsScreen);
              },
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomImage(imageSrc: category[index]["image"].toString(),imageType: ImageType.png,size: 64,),
                      const SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            CustomText(
                              text:category[index]["trainerName"].toString(),
                              color: AppColors.primaryTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(width: 8,),
                            CustomContainerCard(
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: AppColors.brandColor
                                ),
                                content: const CustomText(
                                  top: 4,
                                  bottom: 4,
                                  text: "4.8" ,
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ))],),
                          const SizedBox(height: 4,),
                          CustomText(text:category[index]["trainingLevel"].toString(),
                            color: AppColors.secondaryTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(height: 4,),
                          CustomText(text: category[index]["experience"].toString(),
                            color: const Color(0xFF6943FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,)

                        ],
                      ),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
              marginBottom: 16,
              marginTop: 16,
              paddingBottom: 16,
              paddingLeft: 16,
              paddingTop: 16,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffF6F6F6),

              ),
            ))
        ),
      ),
    );
  }
}
