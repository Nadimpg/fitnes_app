import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/view/screens/auth/signup/inner_widgets/sign_up_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/buttons/custom_buttom_with_icon.dart';
import '../../../widgets/buttons/custom_button.dart';
import '../../../widgets/image/custom_image.dart';
import '../../../widgets/text/custom_text.dart';
import '../../../widgets/text_field/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    children: [
                      SignUpAuthScreen(),
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.loginScreen);
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 54),
                                child: RichText(
                                  text: TextSpan(
                                    text: AppStrings.alreadyHaveAccount,
                                    style: GoogleFonts.openSans(
                                        color: AppColors.secondaryTextColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    children: [
                                      TextSpan(
                                        text: AppStrings.signIn,
                                        style: GoogleFonts.openSans(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.brandColor),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ))),
    ));
  }
}
