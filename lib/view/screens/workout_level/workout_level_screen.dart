import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/advance_workout.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/beginner_workout.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/intermediat_section.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutLevelScreen extends StatefulWidget {
  const WorkoutLevelScreen({super.key});

  @override
  State<WorkoutLevelScreen> createState() => _WorkoutLevelScreenState();
}

class _WorkoutLevelScreenState extends State<WorkoutLevelScreen> {
  List levelCategory = ["Beginner","Intermediate","Advance"];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         appBar:CustomAppBar(appBarContent: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             GestureDetector(
               onTap: (){
                 Get.back();
               },
               child: Container(
                 padding: const EdgeInsets.all(8),
                 child:  const Icon(Icons.arrow_back_ios_new_outlined,size: 16,),
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(4)),
               ),
             ),
             Text(
               "WORKOUT LEVELS",
               textAlign: TextAlign.center,
               style: GoogleFonts.roboto(
                 color: const Color(0xff222222),
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
               ),
             ),
             const SizedBox()
           ],)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
          child: Column(
            children: [
             Row(
             children: List.generate(levelCategory.length, (index) => Expanded(
                 child: CustomContainerCard(
                   onTap: (){
                     // if(index==1){
                     //    //Navigator.push(context, MaterialPageRoute(builder: (_)=>IntermediateSection()));
                     // }
                     setState(() {
                       selectColor = index;
                     });
                   },
                   marginRight: 4,
                   marginLeft: 4,
                   paddingTop: 12,
                   paddingBottom: 12,
                   content: CustomText(text: levelCategory[index],color: selectColor==index? AppColors.whiteColor:AppColors.brandColor,fontSize: 12,fontWeight: FontWeight.w500,),
                   decoration: BoxDecoration(
                       color: selectColor==index? AppColors.brandColor:AppColors.whiteColor ,
                       border: Border.all(color: selectColor==index? AppColors.brandColor:AppColors.brandColor,width: 1),
                       borderRadius: BorderRadius.circular(4)
                   )
                   ,)
             ),)
              ),
              const SizedBox(height: 16,),
              Expanded(child: selectColor == 0 ? const BeginnerSection():selectColor == 1?const IntermediateSection():  selectColor == 2? const AdnvaceWorkout():const SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
