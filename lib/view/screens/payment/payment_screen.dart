import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/view/screens/payment/inner_widgets/payment_section.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:fitness/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/buttons/custom_gradient_color.dart';
import '../../widgets/container/custom_container.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                'PAYMENT',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Payment Method',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.primaryTextColor,
                  bottom: 16,
                ),
                Row(
                  children: [
                    CustomContainerCard(
                      paddingTop: 50,
                      paddingBottom: 50,
                      paddingLeft: 24,
                      paddingRight: 24,
                      marginRight: 16,
                      decoration: BoxDecoration(
                        color: AppColors.opacity,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      content: const CustomImage(
                        imageSrc: AppIcons.add,
                        size: 16,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 115,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    Get.toNamed(AppRoutes.editCardScreen);
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const CustomImage(
                                      imageSrc: AppImages.visaCard,
                                      imageType: ImageType.png,
                                      size: 128,
                                    ),
                                  ),
                                ),
                               const Positioned(
                                   right: 20,
                                   top: 10,
                                   child: CustomText(
                                     text: 'Visa',
                                     fontWeight: FontWeight.w700,
                                     fontSize: 18,
                                     color: AppColors.whiteColor,
                                   ))
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
             PaymentSection(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
            child: CustomGradientButton(onTap: (){
              Get.toNamed(AppRoutes.paymentCompletedScreen);
            }, buttonText:"Confirm")),
      ),
    );
  }
}
