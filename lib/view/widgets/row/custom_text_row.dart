import 'package:fitness/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextRow extends StatelessWidget {
  final String leftText;
  final Color leftTextColor;
  final double leftFontSize;
  final FontWeight leftFontWeight;
  final String rightText;
  final Color rightTextColor;
  final double rightFontSize;
  final FontWeight rightFontWeight;
  final VoidCallback ?onTap;

  const CustomTextRow({super.key,
    required this.leftText,
    this.leftTextColor = AppColors.primaryTextColor,
    this.leftFontSize =14,
    this.leftFontWeight = FontWeight.w600,
    required this.rightText ,
    this.rightTextColor = AppColors.brandColor,
    this.rightFontSize = 12,
    this.rightFontWeight = FontWeight.w500,
     this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftText,style: GoogleFonts.openSans(
          color: leftTextColor,
          fontSize: leftFontSize ,
          fontWeight: leftFontWeight,
        ) ,),
        GestureDetector(
          onTap: onTap,
          child: Text(rightText,
            style: GoogleFonts.openSans(
            color: rightTextColor,
            fontSize: rightFontSize ,
            fontWeight: rightFontWeight,
          ) ,),
        )
      ],
    );
  }
}
