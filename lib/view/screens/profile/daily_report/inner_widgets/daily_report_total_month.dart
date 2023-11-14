import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/text/custom_text.dart';

class DailyReportTotalMonth extends StatefulWidget {
  const DailyReportTotalMonth({super.key});

  @override
  State<DailyReportTotalMonth> createState() => _DailyReportTotalMonthState();
}

class _DailyReportTotalMonthState extends State<DailyReportTotalMonth> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text: AppStrings.totalsMonth,
          color: AppColors.primaryTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        CustomContainerCard(
          paddingBottom: 22,
          paddingRight: 22,
          paddingLeft: 22,
          paddingTop: 22,
          marginTop: 20,
          marginBottom: 30,
          decoration: BoxDecoration(
              color: AppColors.whiteSmock,
              borderRadius: BorderRadius.circular(8)
          ),
          content:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  CustomText(
                    text: '80',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor,
                  ),
                  CustomText(
                    text: AppStrings.workout,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryTextColor,
                    top: 4,
                  ),

                ],
              ),
              Container(
                height: 36,
                width: 1,
                color: AppColors.secondaryTextColor,
              ),
              const Column(
                children: [
                  CustomText(
                    text: '80',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor,
                  ),
                  CustomText(
                    text: AppStrings.minutes,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryTextColor,
                    top: 4,
                  ),

                ],
              ),
              Container(
                height: 36,
                width: 1,
                color: AppColors.secondaryTextColor,
              ),
              const Column(
                children: [
                  CustomText(
                    text: '0',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor,
                  ),
                  CustomText(
                    text: AppStrings.longest,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryTextColor,
                    top: 4,
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
