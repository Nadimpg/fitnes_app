
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/screens/trainer/inner_widgets/trainer_list.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({super.key});

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: CustomAppBar(appBarContent: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
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
            Text(
              "FITNESS TRAINER",
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
          padding:  const EdgeInsets.symmetric(horizontal: 20.0,vertical: 24),
          child:  Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none
                    ),
                    prefixIcon:  const Icon(Icons.search),
                    prefixIconColor: AppColors.brandColor,
                    suffixIcon: const Icon(Icons.close_rounded,color: AppColors.brandColor,),
                    filled: true,
                    fillColor: const Color(0xffF3F0FF)
                ),
              ),
              const SizedBox(height: 16,),
              const TrainerList(),
            ],
          ),
        ),
      ),
    );
  }
}
