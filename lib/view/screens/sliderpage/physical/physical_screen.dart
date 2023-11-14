import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/buttons/custom_button.dart';

class PhysicalScreen extends StatefulWidget {
  const PhysicalScreen({super.key});

  @override
  State<PhysicalScreen> createState() => _PhysicalScreenState();
}

class _PhysicalScreenState extends State<PhysicalScreen> {
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
                        Text(AppStrings.whatsYourPhysical,style: GoogleFonts.roboto(fontWeight: FontWeight.w700,fontSize: 20,color: AppColors.primaryTextColor),),
                        SizedBox(height: 80,),
                        CustomButton(
                          buttonWidth: MediaQuery.of(context).size.width,
                          onPressed: () {},
                          titleText: AppStrings.beginner,
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
                          titleText: AppStrings.intermediate,
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
                          titleText: AppStrings.advance,
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
