import 'package:fitness/utils/app_colors.dart';

import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/custom_switch/custom_switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopScetionCard extends StatefulWidget {
  const TopScetionCard({super.key});

  @override
  State<TopScetionCard> createState() => _TopScetionCardState();
}

class _TopScetionCardState extends State<TopScetionCard> {
  bool val1 = true;
  bool val2 = false;

  onChangeFunction1(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
  }
  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }
  TimeOfDay _timeOfDay=TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){

            _selectTime();
          },
          child: CustomContainerCard(
            paddingBottom: 16,
            decoration: ShapeDecoration(
              color: AppColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            content:  CustomSwitch(
              text: "7 : 00 am",
              text1: "EveryDay",
              val: val1,
              onChanged: (value) {
                setState(() {
                  val1 = value;
                });
              },
            ),),
        ),
        const SizedBox(height: 16,),
        GestureDetector(
            onTap: (){
              _selectTime();

            },
            child:CustomContainerCard(
              paddingBottom: 16,
              decoration: ShapeDecoration(
                color: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 15,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              content:  CustomSwitch(
                text: "8 : 00 am",
                text1: "EveryDay",
                val: val2,
                onChanged: (value) {
                  setState(() {
                    val2 = value;
                  });
                },
              ),)
        ),
      ],
    );
  }
  Future<void>_selectTime()async{
    await showTimePicker(
         initialTime: _timeOfDay,
        context: context,
        builder: (context,child){
           return Theme(data: ThemeData.light().copyWith(
             colorScheme: ColorScheme.light(
               // change the border color
               primary: Colors.red,
               // change the text color
               onSurface: Colors.purple,
             ),
             // button colors
             buttonTheme: ButtonThemeData(
               colorScheme: ColorScheme.light(
                 primary: Colors.green,
               ),
             ),
           ),



               child: child!);
    }
    );
  }
}
