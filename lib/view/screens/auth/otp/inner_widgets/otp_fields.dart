import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OtpFields extends StatefulWidget {
  const OtpFields({super.key});

  @override
  State<OtpFields> createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PinCodeTextField(
          length: 5,
          obscureText: false,
          keyboardType: TextInputType.number,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textStyle: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff6943FF)
          ),
          pinTheme: PinTheme(
              // disabledColor:
              borderWidth: 1,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8),
              fieldHeight: 40,
              fieldWidth: 60,
              activeColor: const Color(0xffF3F0FF),
              inactiveColor:  Color(0xFFF6F6F6),
              activeFillColor: Color(0xffF3F0FF),
              inactiveFillColor: Color(0xFFF6F6F6),
              selectedFillColor: const Color(0xffF3F0FF),
              selectedColor: Color(0xff6943FF)
          ),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
          onCompleted: (v) {},
          onChanged: (value) {},
          beforeTextPaste: (text) {
            return true;
          },
          appContext: context,
        ),

      ],
    );
  }
}
