import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/auth/reser_password/inner_widgets/dialoge_box.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:fitness/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isClicked = false;
  bool isClicked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(appBarContent: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child:  const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
            ),
          ),
          Text(
            "RESET PASSWORD",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox()
        ],
      )
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CustomImage(imageSrc: AppImages.forgotPassword,imageType: ImageType.png,size: 300,),
            ),
            const CustomText(
              text: AppStrings.createYourNewPassword,
              color: AppColors.secondaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),

            const SizedBox(height: 8,),
            CustomTextField(
              isPassword: isClicked,
              hintText: AppStrings.newPassword,
              hintStyle: GoogleFonts.openSans(
                color: AppColors.silverChalice,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              fillColor: AppColors.whiteSmock,
              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: isClicked ?const Icon(Icons.visibility_off,color: AppColors.silverChalice,):const Icon(Icons.visibility,color: AppColors.silverChalice,),
              ),
              inputTextStyle: GoogleFonts.openSans(
                color: AppColors.primaryTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8,),
            CustomTextField(
              isPassword: isClicked1,
              hintText: AppStrings.confirmPassword,
              hintStyle: GoogleFonts.openSans(
                color: AppColors.silverChalice,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              inputTextStyle: GoogleFonts.openSans(
                color: AppColors.primaryTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              fillColor: AppColors.whiteSmock,
              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    isClicked1 = !isClicked1;
                  });
                },
                child: isClicked1 ?const Icon(Icons.visibility_off,color: AppColors.silverChalice,):const Icon(Icons.visibility,color: AppColors.silverChalice,),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavButton(buttonText: AppStrings.continuee, onTap: (){
         showDialog(context: context, builder: (context){
           return const DialogBox();
           }
         );
      },),

    );
  }
}
