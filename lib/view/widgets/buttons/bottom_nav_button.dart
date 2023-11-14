import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BottomNavButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onTap;
  const BottomNavButton({super.key,
    required this.buttonText,
    required this.onTap});

  @override
  State<BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<BottomNavButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color:  Colors.transparent,
        padding: const EdgeInsetsDirectional.only(top: 24, bottom: 24,start: 20,end: 20),
        width: MediaQuery.of(context).size.width,
        child:  Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff8769FF),
                        Color(0xff6943FF),
                      ]),
                ),
                child:  Center(child: CustomText(
                  text: widget.buttonText,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
              ),
            )
        )

    );
  }
}
