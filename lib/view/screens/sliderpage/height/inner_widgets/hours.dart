import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';

class Hours extends StatelessWidget {
  final int hours;
  final int index;
  const Hours({super.key, required this.hours, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:index == hours? Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.brandColor,
          borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        child:Text(
          hours.toString(),
          style: const TextStyle(
              fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w700),
        ) ,
      ): Text(
        hours.toString(),
        style: const TextStyle(
            fontSize: 16, color: AppColors.secondaryTextColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}