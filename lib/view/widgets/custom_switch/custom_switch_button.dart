import 'package:fitness/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key, required this.text, required this.text1, this.onChanged, required this.val});

  final String text;
  final String text1;
  final Function(bool)? onChanged;
  final bool val;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top: 16,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  widget.text,
                  style:  GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                  ) ),
              const SizedBox(height: 6,),
              Text(
                  widget.text1,
                  style:  GoogleFonts.openSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.silverChalice,
              )
              ),
            ],
          ),
          CupertinoSwitch(
              trackColor: AppColors.silverChalice,
              activeColor: AppColors.brandColor,
              value: widget.val,
              onChanged: widget.onChanged
          ),
        ],
      ),
    );
  }
}
