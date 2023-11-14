import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/screens/biceps_curls/inner-widgets/bottom_sheet.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/custom_switch/custom_switch_button.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class BicepsCurlsScreen extends StatefulWidget {
  const BicepsCurlsScreen({super.key});

  @override
  State<BicepsCurlsScreen> createState() => _BicepsCurlsScreenState();
}

class _BicepsCurlsScreenState extends State<BicepsCurlsScreen> {
  bool isSwitch = false;
  bool val1 = true;
  bool val2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarContent: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
              decoration: BoxDecoration(color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Text(
            "Biceps curls".toUpperCase(),
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color:  AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox()
        ],)),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          children: [
            CustomContainerCard(
              paddingBottom: 16,
              decoration: ShapeDecoration(
                color: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 15,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              content:  CustomSwitch(
                text: "3 sets",
                text1: "Rest",
                val: val1,
                onChanged: (value) {
                  setState(() {
                    val1 = value;
                  });
                },
              ),),
            // Text(
            //   '00:00',
            //   textAlign: TextAlign.center,
            //   style: GoogleFonts.roboto(
            //     color: AppColors.primaryTextColor,
            //     fontSize: 36,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
            //  Row(
            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //    const CustomText(text: "3 Steps",
            //      color: AppColors.primaryTextColor,
            //      fontSize: 16,
            //      fontWeight: FontWeight.w600,
            //    ),
            //
            //    Row(
            //      children: [
            //        const CustomText(text: "Rest",
            //          color: AppColors.primaryTextColor,
            //          fontSize: 14,
            //          fontWeight: FontWeight.w600,
            //        ),
            //
            //        /* Switch(
            //            activeColor: AppColors.whiteColor,
            //             activeTrackColor: AppColors.brandColor,
            //             value: isSwitch,
            //             onChanged: (value) {
            //               setState(() {
            //                 isSwitch = !isSwitch;
            //               });
            //             }),*/
            //      ],
            //    )
            //   ],
            // ),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavButton(buttonText: "End", onTap: (){
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16))
            ),
            context: context,
            builder: (context) {
              return const MyBottomSheet();
            }
        );

      }),

    );
  }
}
