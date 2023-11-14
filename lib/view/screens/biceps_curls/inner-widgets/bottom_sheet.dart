import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  List <dynamic>decision = ["Cancel","Yes,Finished"];
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 32,start: 16,end: 16,),
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16))
      ),
      child: Column(
        children: [
          Text(
            'Finish Workout',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16,),
          const CustomText(
            text: 'Are you finished with this workout?',
            color:AppColors.secondaryTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(decision.length, (index) =>  Expanded(
              child: CustomContainerCard(
                onTap: (){
                  setState(() {
                    selectedColor = index;
                  });
                },
                marginRight: 4,
                marginLeft: 4,
                paddingTop: 12,
                paddingBottom: 12,
                content: CustomText(text: decision[index],color: selectedColor == index? AppColors.whiteColor:AppColors.brandColor,fontSize: 12,fontWeight: FontWeight.w500,),
                decoration: BoxDecoration(
                    color:  selectedColor == index? AppColors.brandColor:AppColors.whiteColor ,
                    border: Border.all(color:  selectedColor == index? AppColors.brandColor:AppColors.brandColor,width: 1),
                    borderRadius: BorderRadius.circular(4)
                )
                ,),
            ),),
          )
        ],
      ),
    );
  }
}
