import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/device_utils.dart';
import 'package:fitness/view/screens/reviews/inner_widgets/reviews_bottom_section.dart';
import 'package:fitness/view/screens/reviews/inner_widgets/reviews_pop_section.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/buttons/custom_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../utils/app_strings.dart';


class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {

  @override
  void initState() {
    DeviceUtils.innerUtils();
    super.initState();
  }
  @override
  void dispose() {
    DeviceUtils.innerUtils();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: CustomContainerCard(
                  height: 30,
                  width: 30,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 15,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ), content: const Icon(Icons.arrow_back_ios_new,size: 12,),
                ),
              ),
              const SizedBox(width: 62,),
              Text(AppStrings.allReviews,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),

        body:const ReviewsBottomSection(),

        bottomNavigationBar: BottomNavButton(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (BuildContext context){
                  return const ReviewsPopSection();
            }
            );
          },
          buttonText: 'Write a Review',
        ),
      ),
    );
  }
}
