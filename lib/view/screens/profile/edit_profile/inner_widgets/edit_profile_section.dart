import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../widgets/text_field/custom_text_field.dart';

class EditProfileSection extends StatefulWidget {
  const EditProfileSection({super.key});

  @override
  State<EditProfileSection> createState() => _EditProfileSectionState();
}

class _EditProfileSectionState extends State<EditProfileSection> {
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        CustomTextField(
          fieldBorderRadius: 8,
          hintText: 'First Name',
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
        ),
        SizedBox(height: 16,),
        CustomTextField(
          fieldBorderRadius: 8,
          hintText: 'Last Name',
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
        ),
        SizedBox(height: 16,),
        CustomTextField(
          fieldBorderRadius: 8,
          suffixIcon: GestureDetector(
            onTap: () {
            },
            child: Icon(Icons.date_range,color: AppColors.secondaryTextColor),
          ),
          hintText: 'Date of Birth',
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
        ),
        SizedBox(height: 16,),
        CustomTextField(
          fieldBorderRadius: 8,
          suffixIcon: GestureDetector(
            onTap: () {
            },
            child: Icon(Icons.email_outlined,color: AppColors.secondaryTextColor,),
          ),
          hintText: AppStrings.enterEmail,
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field can not be empty';
            } else if (!value.contains(RegExp('\@'))) {
              return 'Please enter a valid email';
            } else {
              return null;
            }
          },
        ),
        SizedBox(height: 16,),
        CustomTextField(
          fieldBorderRadius: 8,
          suffixIcon: GestureDetector(
              onTap: () {
              },
              child: Icon(Icons.keyboard_arrow_down)
          ),
          hintText: 'Country Name',
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
        ),
        SizedBox(height: 16,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    height: 50,
                    padding:  const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 14),
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IntlPhoneField(

                      initialCountryCode: 'MX',
                      disableLengthCheck: true,
                      showDropdownIcon: false,
                      showCountryFlag: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )
                      ),
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    )

                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: CustomTextField(
                fieldBorderRadius: 8,
                hintText: 'Phone Number',
                hintStyle: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: AppColors.silverChalice),
                fillColor: AppColors.whiteSmock,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        SizedBox(height: 16,),
        CustomTextField(
          fieldBorderRadius: 8,
          suffixIcon: GestureDetector(
            onTap: () {
            },
            child: Icon(Icons.keyboard_arrow_down,color: AppColors.secondaryTextColor),
          ),
          hintText: 'Gender',
          hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: AppColors.silverChalice),
          fillColor: AppColors.whiteSmock,
        ),
      ],
    );
  }
}
