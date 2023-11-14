import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/buttons/custom_button.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.whatsYourGoal,style: GoogleFonts.roboto(fontWeight: FontWeight.w700,fontSize: 20,color: AppColors.primaryTextColor),),
                        SizedBox(height: 80,),
                        CustomButton(
                          buttonWidth: MediaQuery.of(context).size.width,
                          onPressed: () {},
                          titleText: AppStrings.loseWeight,
                          titleSize: 14,
                          titleWeight: FontWeight.w700,
                          titleColor: AppColors.brandColor,
                          buttonBgColor: AppColors.opacity,
                          elevation: 0,
                        ),
                        SizedBox(height: 20,),
                        CustomButton(
                          buttonWidth: MediaQuery.of(context).size.width,
                          onPressed: () {},
                          titleText: AppStrings.gainMuscle,
                          titleSize: 14,
                          titleWeight: FontWeight.w700,
                          titleColor: AppColors.brandColor,
                          buttonBgColor: AppColors.opacity,
                          elevation: 0,
                        ),
                        SizedBox(height: 20,),
                        CustomButton(
                          buttonWidth: MediaQuery.of(context).size.width,
                          onPressed: () {},
                          titleText: AppStrings.keepFit,
                          titleSize: 14,
                          titleWeight: FontWeight.w700,
                          titleColor: AppColors.whiteColor,
                          buttonBgColor: AppColors.brandColor,
                          elevation: 0,
                        ),
                      ],
                    ))));
  }
}
