

import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/trainer_details/inner_widgets/trainer_details_section.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainerDetailsScreen extends StatefulWidget {
  const TrainerDetailsScreen({super.key});

  @override
  State<TrainerDetailsScreen> createState() => _TrainerDetailsScreenState();
}

class _TrainerDetailsScreenState extends State<TrainerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: 342,
            width: MediaQuery.of(context).size.width,
            decoration:const BoxDecoration(
                image: DecorationImage(
                  image:AssetImage(AppImages.trainerDetailsImg),
                  fit: BoxFit.fill
                )
            ),
          ),
          Positioned(
            top: 50,
            left: 24,
            child: GestureDetector(
              onTap: (){
                Get .back();
              },
              child: Container(
                padding:  const EdgeInsets.all(8),
                child:  const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))
              ),
              child:  TrainerDetailsSection()
            ),
          )
        ],
      ),
       bottomNavigationBar: BottomNavButton(buttonText: "Book an Appointment", onTap: (){
         Get.toNamed(AppRoutes.appointmentScreen);
       }),
    );
  }
}
