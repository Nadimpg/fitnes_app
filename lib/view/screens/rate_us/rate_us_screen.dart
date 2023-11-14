import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/buttons/custom_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';




class RateUsScreen extends StatefulWidget {
  const RateUsScreen({super.key});

  @override
  State<RateUsScreen> createState() => _RateUsScreenState();
}
class _RateUsScreenState extends State<RateUsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 20),
      child: Column(
          children: [
            const CustomContainerCard(
              width: 120,
              height: 120,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFF8769FF), Color(0xFF6943FF)],
                ),
                shape: OvalBorder(),
              ),
              content:  Padding(
                padding: EdgeInsets.all(35),
                child: CustomImage(
                    imageSrc: AppIcons.like,
                    imageType: ImageType.svg,
                    imageColor: AppColors.whiteColor
                ),
              ),),
            const SizedBox(height: 24,),
            Column(
              children: [
                const CustomText(
                  text: AppStrings.yourOpinionMatterToUs,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                const SizedBox(height: 8,),
                const CustomText(
                  text: AppStrings.yourOpinion,
                  color: AppColors.subTitile,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                const SizedBox(height: 16,),
                RatingBarIndicator(
                  rating: 3.75,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: AppColors.linear,
                  ),
                  itemCount: 5,
                  itemSize: 30,
                  direction: Axis.horizontal,
                ),
                const SizedBox(height: 32,),
                Container(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 15,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryTextColor

                    ),
                    maxLines: 3,
                    decoration: const InputDecoration(
                        hintText: "give your review here........",
                      border: InputBorder.none


                    ),
                  ),
                ),
                const SizedBox(height: 14,),
                BottomNavButton(buttonText: 'Submit', onTap: () {
                    showModalBottomSheet(context: context, builder: (context){
                      return  Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
                        child: Column(
                            children: [
                              const CustomContainerCard(
                                width: 120,
                                height: 120,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [Color(0xFF8769FF), Color(0xFF6943FF)],
                                  ),
                                  shape: OvalBorder(),
                                ),
                                content:  Padding(
                                  padding: EdgeInsets.all(35),
                                  child: CustomImage(
                                      imageSrc: AppIcons.like,
                                      imageType: ImageType.svg,
                                      imageColor: AppColors.whiteColor
                                  ),
                                ),),
                              const SizedBox(height: 24,),
                              Column(
                                children: [
                                  const CustomText(
                                    text: AppStrings.yourOpinionMatterToUs,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                  const SizedBox(height: 8,),
                                  const CustomText(
                                    text: AppStrings.yourOpinion,
                                    color: AppColors.subTitile,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                  const SizedBox(height: 16,),
                                  RatingBarIndicator(
                                    rating: 3.75,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: AppColors.linear,
                                    ),
                                    itemCount: 5,
                                    itemSize: 30,
                                    direction: Axis.horizontal,
                                  ),
                                  const SizedBox(height: 32,),

                                  BottomNavButton(buttonText: 'Done', onTap: () {

                                  },
                                  )
                                ],
                              )

                            ]

    ),
                      );
                });
                },
                )
              ],
            )

          ]
      ),
    );
  }
}
