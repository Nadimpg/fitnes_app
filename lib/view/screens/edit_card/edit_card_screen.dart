import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/edit_card/inner_widgets/edit_card_section.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_color.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/container/custom_container.dart';

class EditCardScreen extends StatefulWidget {
  const EditCardScreen({super.key});

  @override
  State<EditCardScreen> createState() => _EditCardScreenState();
}

class _EditCardScreenState extends State<EditCardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: CustomContainerCard(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 15,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                content: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 90,
            ),
            Text(
              'EDIT CARD',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints)=>
            const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Stack(
                   children: [
                     CustomImage(imageSrc: AppImages.visaCards,imageType: ImageType.png,),
                     Positioned(
                         bottom: 10,
                         left: 15,
                         child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         CustomText(
                           text: 'MEGAN SUSAN',
                           fontSize: 14,
                           fontWeight: FontWeight.w500,
                           color: AppColors.whiteColor,
                           bottom: 8,
                         ),
                         CustomText(
                           text: '5124 3256 6589 2048',
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                           color: AppColors.whiteColor,
                           bottom: 8,
                         ),
                       ],
                     ))
                   ],
                 ),
                 EditCardSection()
                ],
              ),
            )
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
          child: CustomGradientButton(onTap: (){}, buttonText:AppStrings.save)),
    ));
  }
}
