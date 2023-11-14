import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_icons.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/buttons/custom_buttom_with_icon.dart';
import '../../../../widgets/buttons/custom_button.dart';
import '../../../../widgets/image/custom_image.dart';
import '../../../../widgets/text_field/custom_text_field.dart';

class LogInAuthScreen extends StatefulWidget {
  const LogInAuthScreen({super.key});

  @override
  State<LogInAuthScreen> createState() => _LogInAuthScreenState();
}

class _LogInAuthScreenState extends State<LogInAuthScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isSelected = true;
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: AppStrings.letsSignYouIn,
            color: AppColors.primaryTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            bottom: 8,
          ),
          const CustomText(
            text: AppStrings.signIntoYourAccount,
            color: AppColors.secondaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            bottom: 40,
          ),
          const CustomText(
            text: AppStrings.email,
            color: AppColors.primaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            bottom: 8,
          ),
          CustomTextField(
            fieldBorderRadius: 8,
            hintText: AppStrings.enterEmail,
            hintStyle: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: AppColors.silverChalice),
            fillColor: AppColors.whiteSmock,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field can not be empty';
              } else if (!value.contains(RegExp('\@'))) {
                return 'Please enter a valid email';
              } else {
                return null;
              }
            },
          ),
          const CustomText(
            text: AppStrings.password,
            color: AppColors.primaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            bottom: 8,
            top: 16,
          ),
          CustomTextField(
            fieldBorderRadius: 8,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: isSelected
                  ? Icon(
                Icons.visibility_off,
                color: AppColors.silverChalice,
              )
                  : Icon(Icons.visibility,
                  color: AppColors.silverChalice),
            ),
            hintText: AppStrings.enterPassword,
            hintStyle: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: AppColors.silverChalice),
            fillColor: AppColors.whiteSmock,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field can not be empty';
              } else if (value.length < 6) {
                return 'Please enter a valid password';
              } else {
                return null;
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    checkColor: AppColors.whiteColor,
                    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return AppColors.brandColor.withOpacity(.4);
                      }
                      return AppColors.brandColor;
                    }),
                    value: isClicked,
                    onChanged: (bool? value) {
                      setState(() {
                        isClicked = value!;
                      });
                    },
                  ),
                  const CustomText(
                    text: AppStrings.rememberMe,
                    color: AppColors.secondaryTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.forgetPassScreen);
                },
                child: const CustomText(
                  text: AppStrings.forgotPassword,
                  color: AppColors.primaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
         CustomGradientButton(onTap: (){
           Get.toNamed(AppRoutes.bottomNavBar);
         }, buttonText:AppStrings.signIn ),
          const Align(
            alignment: Alignment.center,
            child: CustomText(
              textAlign: TextAlign.center,
              text: AppStrings.orContinueWith,
              color: AppColors.silverChalice,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              bottom: 20,
              top: 20,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButtonWithIcon(
                  buttonColor: AppColors.whiteSmock,
                  onPressed: () {},
                  titleText: AppStrings.google,
                  iconSrc: AppIcons.google,
                  imageType: ImageType.svg,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomElevatedButtonWithIcon(
                  buttonColor: AppColors.whiteSmock,
                  onPressed: () {},
                  titleText: AppStrings.apple,
                  iconSrc: AppIcons.apple,
                  imageType: ImageType.svg,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
