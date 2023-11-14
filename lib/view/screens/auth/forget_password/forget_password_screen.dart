import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/auth/forget_password/inner_widgets/password_via_section.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
   ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              child:  const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Text(
            "FORGET PASSWORD",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: const Color(0xff222222),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox()
        ],)),
      body:  SingleChildScrollView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                 Center(
                   child: CustomImage(imageSrc: AppImages.forgotPassword,imageType: ImageType.png ,size: 180,),
                 ),
            SizedBox(height: 24,),
            CustomText(
              textAlign: TextAlign.start,
              text: "Select which contact details should we use to reset \nyour password",

            ),
            SizedBox(height: 24,),
            PasswordViaSection()
          ],
        ),
      ),
     bottomNavigationBar:Container(
         color:  Colors.transparent,
         padding: const EdgeInsetsDirectional.only(top: 24, bottom: 24,start: 20,end: 20),
         width: MediaQuery.of(context).size.width,
         child: BottomNavButton(buttonText: AppStrings.continuee, onTap: (){
           Get.toNamed(AppRoutes.otpScreen);
         },)

     ),
    );
  }
}
