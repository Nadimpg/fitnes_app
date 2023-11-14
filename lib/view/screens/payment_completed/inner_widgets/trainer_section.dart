import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentTrainerSection extends StatefulWidget {
  const PaymentTrainerSection({super.key});

  @override
  State<PaymentTrainerSection> createState() => _PaymentTrainerSectionState();
}

class _PaymentTrainerSectionState extends State<PaymentTrainerSection> {
  @override
  Widget build(BuildContext context) {
    return  CustomContainerCard(

        decoration: ShapeDecoration(
          color: const Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        content:Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CustomText(
                text: 'Trainer',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.primaryTextColor,
                bottom: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle
                    ),
                    child:  CustomImage(
                      imageSrc: AppImages.emily,
                      imageType: ImageType.png,
                      size: 40,
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Emily Kevin',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.primaryTextColor,
                        bottom: 4,
                        left: 8,
                      ),
                      CustomText(
                        text: 'High Intensity Training',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.brandColor,
                        left: 8,
                      ),
                    ],
                  ),
                  CustomContainerCard(
                      paddingRight: 8,
                      paddingLeft: 8,
                      paddingBottom: 2,
                      paddingTop: 2,
                      marginLeft: 16,
                      decoration: BoxDecoration(
                          color: AppColors.brandColor,
                          borderRadius: BorderRadius.circular(4)
                      ),
                      content: const CustomText(
                        text: '4.5',
                        color: AppColors.whiteColor,
                        fontSize: 12,
                      ))
                ],
              ),
              const SizedBox(height: 16),
              const Divider(
                color: AppColors.silverChalice,
                thickness: 1,
              ),

              const CustomText(
                text: 'Date',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.primaryTextColor,
                top: 16,
              ),
              const CustomText(
                text: '20 October 2021 - Wednesday',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.primaryTextColor,
                top: 8,
              ),
              const CustomText(
                text: 'Time',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.primaryTextColor,
                top: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "09:30 AM",
                  ),
                  Icon(Icons.notifications,color: AppColors.primaryTextColor,)
                ],
              )
            ],
          ),
        ) );
  }
}
