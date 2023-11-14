import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/advance_workout.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/beginner_workout.dart';
import 'package:fitness/view/screens/workout_level/inner_widgets/intermediat_section.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class TrainerFilter extends StatefulWidget {
  const TrainerFilter({super.key});

  @override
  State<TrainerFilter> createState() => _TrainerFilterState();
}

class _TrainerFilterState extends State<TrainerFilter> {
  List levelCategory = ["Beginner","Intermediate","Advance"];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
          child: Column(

            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none
                    ),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: AppColors.brandColor,
                    filled: true,
                    fillColor: const Color(0xffF3F0FF)
                ),
              ),
              const SizedBox(height: 24,),
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
              const SizedBox(height: 24,),
              Expanded(child: selectColor == 0 ? const BeginnerSection():selectColor == 1?const IntermediateSection():  selectColor == 2? const AdnvaceWorkout():const SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
