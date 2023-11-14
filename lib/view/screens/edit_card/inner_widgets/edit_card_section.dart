import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/text/custom_text.dart';

class EditCardSection extends StatefulWidget {
  const EditCardSection({super.key});

  @override
  State<EditCardSection> createState() => _EditCardSectionState();
}

class _EditCardSectionState extends State<EditCardSection> {
  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Card Holder Name',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.brandColor,
          top: 16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Megan Susan',
            border: UnderlineInputBorder(

              borderSide: BorderSide(color: AppColors.secondaryTextColor),
            ),
          ),
        ),
        CustomText(
          text: 'Card Number',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.brandColor,
          top: 16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '5124 -  3256 - 6589 - 2048',
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryTextColor),
            ),
          ),
        ),
        SizedBox(height: 22,),
        Row(

          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Expiry (MM/YY)',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.brandColor,
                    top: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '01 - 23',
                      border: UnderlineInputBorder(

                        borderSide: BorderSide(color: AppColors.secondaryTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'cvc',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.brandColor,
                    top: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '696',
                      border: UnderlineInputBorder(

                        borderSide: BorderSide(color: AppColors.secondaryTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomText(
          text: 'Delete Card',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.red,
          top: 16,
          bottom: 16,
        ),
        Divider(thickness: 1,),
      ],
    );
  }
}
