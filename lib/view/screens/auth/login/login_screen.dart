import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/auth/login/inner_widgets/login_auth_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                      children: [
                        LogInAuthScreen(),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.signUpScreen);
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 54),
                                  child: RichText(
                                    text: TextSpan(
                                      text: AppStrings.doNotHaveAnAccount,
                                      style: GoogleFonts.openSans(
                                          color: AppColors.secondaryTextColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      children: [
                                        TextSpan(
                                          text: AppStrings.signUp,
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
                        )
                      ]))),
    ));
  }
}
