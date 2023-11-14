
import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkOutCategory extends StatefulWidget {
  const WorkOutCategory({super.key});

  @override
  State<WorkOutCategory> createState() => _WorkOutCategoryState();
}

class _WorkOutCategoryState extends State<WorkOutCategory> {
  List<Map<String , String>> category = [
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.cycling,
      "type": AppStrings.cycling,
      "time":"12",
      "unit" : "km",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.walking,
      "type": AppStrings.walking,
      "time":"8475",
      "unit" : "steps",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
    {
      "image": AppIcons.workout,
      "type": AppStrings.workout,
      "time":"45",
      "unit" : "min",
      "recentTime": "Today 6:30"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column( 
              children: List.generate(category.length, (index) => CustomContainerCard(
                onTap: (){
                  Get.toNamed(AppRoutes.singleWorkoutScreen);
                },
                marginBottom: 16,
                  paddingLeft: 16,
                  paddingTop: 16,
                  paddingBottom: 16,
                  paddingRight: 16,
                  decoration:  const BoxDecoration(
                    color: Color(0xFFF6F6F6),
                  ),
                  content: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           CustomImage(imageSrc: category[index]["image"].toString(),imageType: ImageType.svg,),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: category[index]["time"],
                                  style: GoogleFonts.openSans(
                                    color: const Color(0xff222222),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: category[index]["unit"],
                                  style: GoogleFonts.openSans(
                                    color: const Color(0xff222222),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                             category[index]["type"].toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              color: const Color(0xff222222),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                              category[index]["recentTime"].toString(),
                              style: GoogleFonts.openSans(
                              color: const Color(0xFF6943FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],)
                    ],)))
            ),
          ],
        ),
      ),
    );
  }
}
