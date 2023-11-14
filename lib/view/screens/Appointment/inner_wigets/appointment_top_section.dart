import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class AppointmentTopSection extends StatefulWidget {
  const AppointmentTopSection({super.key});

  @override
  State<AppointmentTopSection> createState() => _AppointmentTopSectionState();
}

class _AppointmentTopSectionState extends State<AppointmentTopSection> {
  @override
  Widget build(BuildContext context) {
    return  CustomContainerCard(
      paddingLeft: 18,
      paddingTop: 16,
      paddingBottom: 16,
      decoration: ShapeDecoration(
        color: const Color(0xFFF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      content: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration:
                const BoxDecoration(shape: BoxShape.circle),
                child:  CustomImage(
                  imageSrc: AppImages.emily,
                  imageType: ImageType.png,
                  size: 64,
                ),
              ),
               Column(
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
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: '2 years experience',
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
                  decoration: BoxDecoration(
                      color: AppColors.brandColor,
                      borderRadius: BorderRadius.circular(4)),
                  content: const CustomText(
                    text: '4.5',
                    color: AppColors.whiteColor,
                    fontSize: 12,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
