import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../height/inner_widgets/minute.dart';



class weightScreen extends StatefulWidget {
  const weightScreen({super.key});

  @override
  State<weightScreen> createState() => _weightScreenState();
}

class _weightScreenState extends State<weightScreen> {
  int hour = 5;
  int min = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.whatsYourWeight,
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryTextColor),
        ),
        const SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 45,
              height: 312,
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) {
                  setState(() {
                    min = value + 1;
                  });
                },
                perspective: 0.002,
                physics: const FixedExtentScrollPhysics(),
                itemExtent: 50,
                diameterRatio: 2.5,
                useMagnifier: true,
                magnification: 1.2,
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 200,
                  builder: (context, index) {
                    return Minutes(
                      min: index + 1,
                      index: min,
                    );
                  },
                ),
              ),
            ),
            const CustomText(
              text: AppStrings.kg,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.brandColor,
              left: 8,
            ),

          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const CustomContainerCard(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainerCard(
                    paddingRight: 28,
                    paddingLeft: 28,
                    paddingTop: 4,
                    paddingBottom: 4,
                    decoration: BoxDecoration(color: AppColors.opacity),
                    content: CustomText(
                      text: AppStrings.kg,
                      color: AppColors.brandColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                CustomContainerCard(
                    paddingRight: 28,
                    paddingLeft: 28,
                    paddingTop: 4,
                    paddingBottom: 4,
                    decoration: BoxDecoration(color: AppColors.brandColor),
                    content: CustomText(
                      text: AppStrings.lbs,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ))
      ],
    );
  }
}

