import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/utils/device_utils.dart';

import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'inner_widgets/top_scetion_card.dart';



class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  void initState() {
    DeviceUtils.innerUtils();
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.innerUtils();
    super.dispose();
  }

  bool val1 = true;
  bool val2 = false;

  onChangeFunction1(bool newValue1){
     setState(() {
       val1 = newValue1;
     });
  }
  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
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
                width: 80,
              ),
              Text(
                AppStrings.reminder,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding:  const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
          child: TopScetionCard()
        ),
      ),
    );
  }
}
