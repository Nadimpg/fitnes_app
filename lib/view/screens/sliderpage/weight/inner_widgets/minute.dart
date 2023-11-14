import 'package:flutter/cupertino.dart';

import '../../../../../utils/app_colors.dart';

class Minutes extends StatelessWidget {
  final int min;
  final int index;
  const Minutes({super.key, required this.min, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      child:index == min? Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
        decoration: BoxDecoration(
            color: AppColors.brandColor,
            borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        child:Text(
          min.toString(),
          style: const TextStyle(
              fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w700),
        ) ,
      ): Text(
        min.toString(),
        style: const TextStyle(
            fontSize: 16, color: AppColors.secondaryTextColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}