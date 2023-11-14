import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/payment_completed/inner_widgets/trainer_section.dart';
import 'package:fitness/view/widgets/buttons/custom_gradient_color.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentCompletedScreen extends StatefulWidget {
  const PaymentCompletedScreen({super.key});

  @override
  State<PaymentCompletedScreen> createState() => _PaymentCompletedScreenState();
}

class _PaymentCompletedScreenState extends State<PaymentCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(

         body: SingleChildScrollView(
           padding: const EdgeInsets.only(top: 200,left: 20,right: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     CustomContainerCard(
                       height: 24,
                         width: 24,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: const Color(0xffD0FD3E)
                         ),
                         content: const Icon(Icons.check_rounded,color: AppColors.primaryTextColor,)),
                     const SizedBox(width: 8,),
                     const CustomText(
                       text: "Payment Completed!",
                       fontWeight: FontWeight.w600,
                       fontSize: 22,
                     )
                   ],
                 ),
               const SizedBox(height: 16,),
               const CustomText(
                 textAlign: TextAlign.start                   ,
                 text: "You’ve book a new appointment\nwith your trainer.",
                 fontWeight: FontWeight.w400,
                 fontSize: 15,
               ),
               const SizedBox(height: 44,),
               const PaymentTrainerSection(),
               const SizedBox(height: 44,),
               CustomGradientButton(
                 onTap: () {  },
                 buttonText: 'Done',
               fontWeight: FontWeight.w600,
               )
             ],
           ),
         ),

      ),
    );
  }
}
