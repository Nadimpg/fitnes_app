import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors{

 static const Color primaryTextColor = Color(0xff222222);
 static const Color secondaryTextColor = Color(0xff777777);
 static const Color brandColor = Color(0xff6943FF);
 static const Color whiteColor = Color(0xffffffff);
 static const Color silverChalice = Color(0xffACACAC);
 static const Color whiteSmock = Color(0xffF6F6F6);
 static const Color red = Color(0xffF81515);
 static const Color diviColor = Color(0xffE5E5E5);
 static const Color linear = Color(0xff8769FF);
 static const Color subTitile = Color(0xff7A7A7A);


 static const Color transparentColor = Colors.transparent;



 static const theme = LinearGradient(
  begin: Alignment(-0.00, -1.00),
  end: Alignment(0, 1),
  colors: [
   Color(0xFF787878),
   Color(0xFF434343),
   Colors.black,
  ],
 );

 static const bottomColor =   LinearGradient(
     begin: Alignment(1.00, 0.00),
     end: Alignment(-1, 0),
     colors: [
      Color(0xff8769FF),
      Color(0xff6943FF),
     ]);




 static const Color opacity = Color(0xffF3F0FF);
 static const Color deepWhite = Color(0xffD9D9D9);
 // static const Color diviColor = Color(0xffE5E5E5);

}