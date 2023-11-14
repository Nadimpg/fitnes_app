import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inner_widgets/hours.dart';
import 'inner_widgets/minute.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  int hour = 5;
  int min = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.whatsYourHeight,
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
              width: 38,
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
                  childCount: 15,
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
              text: AppStrings.inc,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.brandColor,
              left: 8,
            ),
            const SizedBox(
              width: 38,
            ),
            SizedBox(
              width: 40,
              height: 312,
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) {
                  setState(() {
                    hour = value + 1;
                  });
                },
                perspective: 0.002,
                physics: const FixedExtentScrollPhysics(),
                itemExtent: 50,
                diameterRatio: 2.5,
                useMagnifier: true,
                magnification: 1.2,
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    return Hours(
                      hours: index + 1,
                      index: hour,
                    );
                  },
                ),
              ),
            ),
            const CustomText(
              text: 'cm',
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
                      text: AppStrings.ft,
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
                      text: AppStrings.cm,
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
