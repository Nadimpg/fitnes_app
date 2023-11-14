import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/screens/profile/daily_workout/inner_widgets/work_out_category.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyWorkoutScreen extends StatefulWidget {
  const DailyWorkoutScreen({super.key});

  @override
  State<DailyWorkoutScreen> createState() => _DailyWorkoutScreenState();
}
class _DailyWorkoutScreenState extends State<DailyWorkoutScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              "DAILY WORKOUT",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color:  AppColors.primaryTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox()
          ],)),
        body:  Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: "Daily Work out Challenge",
                color: AppColors.primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 16,),
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: AppColors.brandColor,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    // _selectedValue = date;
                  });
                },
              ),
              const SizedBox(height: 16,),
              const WorkOutCategory()

            ],
          ),
        ),
      ),
    );
  }
}