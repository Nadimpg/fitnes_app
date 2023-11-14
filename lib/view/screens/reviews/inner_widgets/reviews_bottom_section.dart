import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReviewsBottomSection extends StatefulWidget {
  const ReviewsBottomSection({super.key});

  @override
  State<ReviewsBottomSection> createState() => _ReviewsBottomSectionState();
}

class _ReviewsBottomSectionState extends State<ReviewsBottomSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "4.6",
                  fontWeight: FontWeight.w600,
                  fontSize: 48,
                  color: AppColors.primaryTextColor,
                ),
                const SizedBox(
                  width: 44,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const CustomText(
                            text: "5",
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryTextColor,
                          ),
                          const SizedBox(width: 6,),
                          LinearPercentIndicator(
                            barRadius: Radius.circular(24),
                            width:175,
                            lineHeight: 8.0,
                            percent: 0.6,
                            progressColor: AppColors.secondaryTextColor,
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          const CustomText(
                            text: "4",
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryTextColor,
                          ),
                          const SizedBox(width: 6,),
                          LinearPercentIndicator(
                            barRadius: Radius.circular(24),
                            width:175,
                            lineHeight: 8.0,
                            percent: 0.8,
                            progressColor: AppColors.secondaryTextColor,
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          const CustomText(
                            text: "3",
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryTextColor,
                          ),
                          const SizedBox(width: 6,),
                          LinearPercentIndicator(
                            barRadius: Radius.circular(24),
                            width:175,
                            lineHeight: 8.0,
                            percent: 0.4,
                            progressColor: AppColors.secondaryTextColor,
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          const CustomText(
                            text: "2",
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryTextColor,
                          ),
                          const SizedBox(width: 6,),
                          LinearPercentIndicator(
                            barRadius: Radius.circular(24),
                            width:175,
                            lineHeight: 8.0,
                            percent: 0.2,
                            progressColor: AppColors.secondaryTextColor,
                          ),

                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          const CustomText(
                            text: "1",
                            fontSize: 7,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryTextColor,
                          ),
                          const SizedBox(width: 6,),
                          LinearPercentIndicator(
                            barRadius: Radius.circular(24),
                            width:175,
                            lineHeight: 8.0,
                            percent: 0.1,
                            progressColor: AppColors.secondaryTextColor,
                          ),

                        ],
                      ),
                      const SizedBox(height: 10,),
                      const CustomText(
                        right:14,
                        textAlign: TextAlign.end,
                        text: "174 Ratings",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.secondaryTextColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(20, (index) => CustomContainerCard(
                  marginBottom: 16,
                    paddingTop: 16,
                    paddingLeft: 10,
                    paddingRight: 10,
                    height: 144,
                    decoration: ShapeDecoration(
                      color: AppColors.whiteSmock,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    content:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomImage(
                              size: 32,
                              imageSrc: AppImages.jennifer,
                              imageType: ImageType.png,
                            ),
                            const SizedBox(width: 12,),
                            const CustomText(
                              text: AppStrings.sharonJem,
                            ),
                            const SizedBox(width: 12,),
                            CustomContainerCard(
                                paddingLeft: 6,
                                paddingRight: 6,

                                decoration: ShapeDecoration(
                                  color: AppColors.brandColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                content: const CustomText(
                                  text: "4.5",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.whiteColor,
                                )

                            ),
                            const Expanded(
                              flex: 2,
                              child: CustomText(
                                left: 70,
                                text: "2d ago",
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 4,),
                        const CustomText(
                          textAlign: TextAlign.start,
                          maxLines: 4,
                          text: AppStrings.hadSuchAnAmazingSession,
                        )
                      ],
                    ))),
              ),
            ),
          )

        ],

      ),
    );
  }
}
