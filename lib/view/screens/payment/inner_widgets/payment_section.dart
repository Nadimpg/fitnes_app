import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/container/custom_container.dart';
import '../../../widgets/image/custom_image.dart';
import '../../../widgets/text/custom_text.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({super.key});

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'Order Details',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.primaryTextColor,
          bottom: 16,
        ),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 16),
        const CustomText(
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
              child: const CustomImage(
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
        TextField(
          decoration: InputDecoration(
            hintText: '09:30 AM',
            border: UnderlineInputBorder(

              borderSide: BorderSide(color: AppColors.secondaryTextColor),
            ),
          ),
        ),
        const CustomText(
          text: 'Estimated Cost',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.primaryTextColor,
          top: 16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '\$ ${175.99}',
            border: UnderlineInputBorder(

              borderSide: BorderSide(color: AppColors.secondaryTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
