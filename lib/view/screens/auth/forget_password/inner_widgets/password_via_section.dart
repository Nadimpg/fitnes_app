import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class PasswordViaSection extends StatefulWidget {
  const PasswordViaSection({super.key});

  @override
  State<PasswordViaSection> createState() => _PasswordViaSectionState();
}

class _PasswordViaSectionState extends State<PasswordViaSection> {
 List <Map<String,dynamic>> viaType = [
   {
     "Icon" : AppIcons.sms,
      "passwordViaType" : AppStrings.viaSMS,
      "passwordVia" : " +1111.....756"
   },
   {
     "Icon" : AppIcons.sms,
      "passwordViaType" : AppStrings.viaSMS,
       "passwordVia" : "pythonloverkabir@gmail.com"
   },
 ];
 int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(viaType.length, (index) =>  CustomContainerCard(
        onTap: (){
          setState(() {
          selectedColor =index;
          });
        },
          marginBottom: 16,
          paddingBottom: 16,
          paddingLeft: 16,
          paddingRight: 16,
          paddingTop: 16,
          decoration: BoxDecoration(
              color: selectedColor==index?Color(0xffF3F0FF):Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 1,color: AppColors.brandColor)
          ),
          content: Row(
            children: [
              Container(
                padding: const EdgeInsetsDirectional.all(12),
                child:  CustomImage(imageSrc: viaType[index]["Icon"].toString(),imageType: ImageType.svg,),
                decoration: const BoxDecoration(
                  color: Color(0xffF3F0FF),
                  shape: BoxShape.circle,

                ),
              ),
              const SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: viaType[index]["passwordViaType"].toString(),
                    color: AppColors.secondaryTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 8,),
                  CustomText(
                    text: viaType[index]["passwordVia"].toString(),
                    color: Color(0xFF222222),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),

            ],)))
    );
  }
}
