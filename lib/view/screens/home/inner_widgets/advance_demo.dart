import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class AdvanceDemo extends StatefulWidget {
  const AdvanceDemo({super.key});

  @override
  State<AdvanceDemo> createState() => _AdvanceDemoState();
}

class _AdvanceDemoState extends State<AdvanceDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:  const DecorationImage(
                  image: AssetImage(AppImages.dumbbell,),
                  fit: BoxFit.fill
              )
          ),
          child:  const Column (
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                left: 16,
                text: AppStrings.wakeUpCall,
                color: AppColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                left: 16,
                bottom: 16,
                text: "10 minutes | Advance" ,
                color: AppColors.whiteColor,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
      ],
    );
  }
}
