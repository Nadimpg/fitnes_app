import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/auth/otp/inner_widgets/otp_fields.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              "OTP SCREEN",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: const Color(0xff222222),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox()
          ],)),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Code has been send to +1 111 ******99',
              style: GoogleFonts.openSans(
                color:AppColors.secondaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

          const SizedBox(height: 16,),
            const OtpFields(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Resend code in',
                        style: GoogleFonts.openSans(
                          color: AppColors.secondaryTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '10',
                        style: GoogleFonts.openSans(
                          color: const Color(0xFF6943FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: ' s',
                        style: GoogleFonts.openSans(
                          color: AppColors.secondaryTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'RESEND',
                  style: GoogleFonts.openSans(
                    color: Color(0xFF6943FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavButton(
          onTap: (){
            Get.toNamed(AppRoutes.resetPassScreen);
          },
          buttonText: "Verify"),
    );
  }
}
