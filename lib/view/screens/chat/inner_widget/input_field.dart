
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
   final TextEditingController controller;
  final VoidCallback onTap;
  const InputField({super.key, required this.controller, required this.onTap});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(bottom: 24 , left: 20 ,right: 20),
      child:  Row(children: [
        Expanded(child: CustomTextField(

          textEditingController: widget.controller,
          hintText: AppStrings.writeYourMessage,
        hintStyle: const TextStyle(
          color: AppColors.silverChalice,
          fontSize: 14,
          fontWeight: FontWeight.w600
        ),
        // suffixIcon: const CustomImage(imageSrc: AppIcons.send ,size: 22,),
        )
        ),
        GestureDetector(
          onTap: () {
            widget.onTap();
          },
          child:const CustomImage(
            size: 24,
            imageColor: AppColors.linear,
            imageSrc: AppIcons.camera),
        ),
        const SizedBox(width: 12,),
        GestureDetector(
          onTap: () {
            widget.onTap();
          },
          child:const CustomImage(
              size: 24,
              imageSrc: AppIcons.speaker),
        ),
        const SizedBox(width: 12,),
        GestureDetector(
          onTap: () {
            widget.onTap();
          },
          child:const CustomImage(
              size: 24,
              imageSrc: AppIcons.send),
        ),
      ],),
    );
  }
}