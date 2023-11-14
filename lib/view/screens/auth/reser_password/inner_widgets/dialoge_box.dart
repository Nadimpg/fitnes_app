import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Column(
        children: [
          const CustomImage(imageSrc: AppImages.congratesPass,imageType: ImageType.png,size: 140,),
          const SizedBox(height: 16,),
           const CustomText(text: AppStrings.congratulations,
            color: AppColors.primaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 16,),
          const CustomText(text: AppStrings.yourAccountIsReadyToUse,
              color: AppColors.secondaryTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
          const SizedBox(height: 16,),
          CustomGradientButton(onTap: () {
            Get.toNamed(AppRoutes.bottomNavBar);
              },
            buttonText: AppStrings.goToHomepage,)


        ],
      ),
    );
  }
}
