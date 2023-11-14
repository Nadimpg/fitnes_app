import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/view/screens/sliderpage/height/height_screen.dart';
import 'package:fitness/view/screens/sliderpage/weight/weight_screen.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../birth_date/birth_date_screen.dart';
import '../goal/goal_screen.dart';
import '../physical/physical_screen.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  PageController _controller=PageController();

  bool isLastPage=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Expanded(
                   child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                     onPageChanged: (index){
                       setState(() {
                         //2 is our last page starting from 0
                         isLastPage=index==4;
                       });
                     },
                     children: const [
                        BirthDateScreen(),
                       weightScreen(),
                       HeightScreen(),
                       GoalScreen(),
                       PhysicalScreen(),
                     ],
                   )),
             ],
           ),
         ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              SmoothPageIndicator(
                controller: _controller, count: 5,
                onDotClicked: (index){
                  _controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                effect: const ScrollingDotsEffect(
                    activeDotColor: AppColors.brandColor,
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    dotColor: AppColors.deepWhite,

                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  _controller.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                  decoration: const BoxDecoration(
                    color: AppColors.opacity,
                      shape: BoxShape.circle
                  ),
                  child: const CustomImage(imageSrc: AppIcons.backSlide,size: 13,),
                ),
              ),
              GestureDetector(
                onTap: isLastPage?(){
                  Get.toNamed(AppRoutes.loginScreen);
                }:(){
                  _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                  height: 35,
                  decoration: const BoxDecoration(
                    color: AppColors.brandColor,
                    shape: BoxShape.circle,
                  ),
                  child: const CustomImage(imageSrc: AppIcons.forwardSlide,size: 13,),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

