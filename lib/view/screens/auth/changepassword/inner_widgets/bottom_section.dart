import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:fitness/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';

import '../../../../../utils/app_strings.dart';


class BottomScetion extends StatefulWidget {
  const BottomScetion({super.key});

  @override
  State<BottomScetion> createState() => _BottomScetionState();
}

class _BottomScetionState extends State<BottomScetion> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: AppStrings.currentPassword,
          color: AppColors.primaryTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        SizedBox(height: 12,),
        CustomTextField(
          hintText: AppStrings.enterPassword,
          fillColor: AppColors.whiteSmock,
          fieldBorderRadius: 6,
          hintStyle: TextStyle(color: AppColors.silverChalice,
              fontSize: 14,
              fontWeight: FontWeight.w500),

        ),
        SizedBox(height: 16,),
        CustomText(
          text: AppStrings.newPassword,
          color: AppColors.primaryTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        SizedBox(height: 12,),
        CustomTextField(
          hintText: AppStrings.enterPassword,
          fillColor: AppColors.whiteSmock,
          fieldBorderRadius: 6,
          hintStyle: TextStyle(color: AppColors.silverChalice,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16,),
        CustomText(
          text: AppStrings.confirmNewPassword,
          color: AppColors.primaryTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        SizedBox(height: 12,),
        CustomTextField(
          hintText: AppStrings.enterPassword,
          fillColor: AppColors.whiteSmock,
          fieldBorderRadius: 6,
          hintStyle: TextStyle(color: AppColors.silverChalice,
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 16,),
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoutes.forgetPassScreen);
          },
          child: CustomText(
            text: AppStrings.forgotPassword,
            color: AppColors.brandColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
