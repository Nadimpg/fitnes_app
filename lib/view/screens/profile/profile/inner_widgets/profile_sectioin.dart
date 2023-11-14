import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text/custom_text.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
         Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'PROFILE',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: AppColors.primaryTextColor,
            bottom: 20,
          ),
        ),
        Stack(
          children: [
            const CustomImage(imageSrc: AppImages.profileImg, imageType: ImageType.png,size: 50,),
            Positioned(
                right: 1,
                bottom: 2,
                child: Container(
                    width: 16,
                    height: 16,
                    padding: const EdgeInsets.all(4),
                    decoration:  const BoxDecoration(
                        color: Colors.black,

                        shape: BoxShape.circle),
                    child:  const CustomImage(
                      imageType: ImageType.svg,
                      imageSrc: AppIcons.camera,
                      imageColor: Colors.white,
                    )))
          ],
        ),
        const CustomText(
          text: AppStrings.christinaAinsley,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColors.primaryTextColor,
          top: 10,
        ),
        const CustomText(
          text: 'christinaainsley@gmail.com',
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: AppColors.secondaryTextColor,
          top: 4,
        ),
      ],
    );
  }
}
