import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/utils/device_utils.dart';
import 'package:fitness/view/screens/auth/changepassword/inner_widgets/bottom_section.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  void initState() {
    DeviceUtils.innerUtils();
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.innerUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: CustomAppBar(
            appBarContent: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: CustomContainerCard(
                    height: 30,
                    width: 30,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 15,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    content: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  AppStrings.changePassword,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          body:  SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomScetion()
                ]),
          ),
          bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
              child: CustomGradientButton(onTap: (){}, buttonText: 'Save')),
        ));
  }
}
