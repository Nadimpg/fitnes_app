import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText ;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight ;

  const CustomGradientButton({super.key,
    required this.onTap,
    required this.buttonText,
    this.textColor=  AppColors.whiteColor,
    this.textSize = 16,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff8769FF),
                    Color(0xff6943FF),
                  ]),
            ),
            child: Center(
                child: Text(
                  buttonText,
                  style: GoogleFonts.openSans(
                    color:textColor ,
                    fontSize:  textSize,
                    fontWeight: fontWeight ,
                  ),
                )
            ),
          ),
        )
    );
  }
}