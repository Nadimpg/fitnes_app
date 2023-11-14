import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/view/screens/activity/inner_widgets/activity_section.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
          body: LayoutBuilder(
              builder: (BuildContext context,BoxConstraints constraints)=>
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                    alignment: Alignment.center,
                          child: Text(
                            'ACTIVITY',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                         const CustomText(text: "September, 2023",
                          color: AppColors.primaryTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          top: 20,
                        ),
                        const SizedBox(height: 16,),
                        DatePicker(
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          selectionColor: AppColors.brandColor,
                          selectedTextColor: Colors.white,
                          onDateChange: (date) {
                            // New date selected
                            setState(() {
                              // _selectedValue = date;
                            });
                          },
                        ),
                        const ActivitySection()
                      ],
                    ),
                  )
          ),
    ));
  }
}
