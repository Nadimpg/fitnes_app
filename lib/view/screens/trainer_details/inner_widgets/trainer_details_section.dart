import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/incoming_call/incoming_call.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainerDetailsSection extends StatefulWidget {
  const TrainerDetailsSection({super.key});

  @override
  State<TrainerDetailsSection> createState() => _TrainerDetailsSectionState();
}

class _TrainerDetailsSectionState extends State<TrainerDetailsSection> {
  List  levelCategory = ["Call","Chat","Follow"];
  List  iconList = [AppIcons.call,AppIcons.message,""];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomText(
          text: "Jennifer James",
          color: AppColors.primaryTextColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBarIndicator(
              rating:4.75,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 10,
              direction: Axis.horizontal,
            ),
            const SizedBox(width: 4,),
            Text("4.75",
              style: GoogleFonts.openSans(
                  color: Colors.amber,
                  fontSize: 10,
                  fontWeight: FontWeight.w600
              ),

            ),
            const SizedBox(width: 4,),
            Text(" / 1200 Review",
              style: GoogleFonts.openSans(
                  color: AppColors.secondaryTextColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500
              ),

            ),
          ],
        ),
        const SizedBox(height: 16,),
        Row(
            children: List.generate(levelCategory.length, (index) => Expanded(
                child: CustomContainerCard(
                  onTap: (){
                     if(index==0){Navigator.push(context, MaterialPageRoute(builder: (_)=>IncomingCall()));
                     }
                     if(index==1){
                       Get.toNamed(AppRoutes.chat);
                     }

                    setState(() {
                      selectColor = index;
                    });
                  },
                  marginRight: 4,
                  marginLeft: 4,
                  paddingTop: 12,
                  paddingBottom: 12,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const SizedBox(width: 8,),
                      CustomText(text: levelCategory[index],color: selectColor==index? AppColors.whiteColor:AppColors.brandColor,fontSize: 12,fontWeight: FontWeight.w500,),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: selectColor==index? AppColors.brandColor:AppColors.whiteColor ,
                      border: Border.all(color: selectColor==index? AppColors.brandColor:AppColors.brandColor,width: 1),
                      borderRadius: BorderRadius.circular(4)
                  )
                  ,)
            ),)
        ),
        const SizedBox(height: 16,),
        Container(
          padding:const EdgeInsetsDirectional.all(20),
          decoration: BoxDecoration(
            color: AppColors.whiteSmock,
            borderRadius: BorderRadius.circular(16),


          ),

          child:  IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '6',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Experience',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const VerticalDivider(
                    thickness: 2,
                    color: AppColors.primaryTextColor
                ),

                Column(
                  children: [
                    Text(
                      '25',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Completed',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const VerticalDivider(
                    thickness: 2,
                    color: AppColors.primaryTextColor
                ),

                Column(
                  children: [
                    Text(
                      '46',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Active Clients',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: GoogleFonts.openSans(
                color: AppColors.primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            Container(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 2),
              width: 32,
              decoration: BoxDecoration(
                  color: AppColors.brandColor,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Text(
                  '4.6',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: AppColors.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,)
              ),

            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImages.trainer_3))
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImages.trainer_3))
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImages.trainer_3))
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.brandColor
                  ),
                  child: Center(child: Text(
                    '17+',
                    style: GoogleFonts.openSans(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.reviewsScreen);
              },
              child: Text(
                'Read all reviews',
                textAlign: TextAlign.right,
                style: GoogleFonts.openSans(
                  color: AppColors.brandColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children:  List.generate(1, (index) =>  CustomContainerCard(
                  marginTop: 8,
                  paddingTop: 16,
                  paddingLeft: 10,
                  paddingRight: 10,
                  paddingBottom: 16,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteSmock,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  content:Column(
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
    );
  }
}
