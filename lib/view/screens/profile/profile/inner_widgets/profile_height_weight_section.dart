import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/text/custom_text.dart';

class ProfileHeightweightSection extends StatefulWidget {
  const ProfileHeightweightSection({super.key});

  @override
  State<ProfileHeightweightSection> createState() => _ProfileHeightweightSectionState();
}

class _ProfileHeightweightSectionState extends State<ProfileHeightweightSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         const Column(
          children: [
            CustomText(
              text: '65 kg',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
            ),
            CustomText(
              text: AppStrings.weight,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryTextColor,
              top: 4,
            ),

          ],
        ),
        Container(
          height: 36,
          width: 1,
          color: AppColors.secondaryTextColor,
        ),
        const Column(
          children: [
            CustomText(
              text: '175 cm',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
            ),
            CustomText(
              text: AppStrings.height,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryTextColor,
              top: 4,
            ),

          ],
        ),
        Container(
          height: 36,
          width: 1,
          color: AppColors.secondaryTextColor,
        ),
        const Column(
          children: [
            CustomText(
              text: '20 x',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
            ),
            CustomText(
              text: AppStrings.fatMass,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryTextColor,
              top: 4,
            ),

          ],
        ),
      ],
    );
  }
}
