
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:fitness/core/app_routes/app_routes.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_images.dart';
import 'package:fitness/utils/app_strings.dart';
import 'package:fitness/utils/device_utils.dart';
import 'package:fitness/view/screens/Appointment/inner_wigets/appointment_top_section.dart';
import 'package:fitness/view/widgets/app_bar/custom_app_bar.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:fitness/view/widgets/buttons/custom_back_button.dart';
import 'package:fitness/view/widgets/container/custom_container.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  void initState() {
    DeviceUtils.innerUtils();
    super.initState();
  }

  @override
  void dispose() {
    DeviceUtils.innerUtils();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
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
                width: 60,
              ),
              Text(
                AppStrings.appointment,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding:
              const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const AppointmentTopSection(),
              const SizedBox(height: 16,),
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.multi,
                ),
                initialValue: [],
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 24,),
              const CustomText(
                text: "Time",
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainerCard(
                      paddingBottom: 8,
                      paddingRight: 24,
                      paddingTop: 8,
                      paddingLeft: 24,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF4F4F4F)),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      content:  Text(
                        '09:00 AM',
                        style: GoogleFonts.openSans(
                          color: const Color(0xFF4F4F4F),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16,),
                    CustomContainerCard(
                      paddingBottom: 8,
                      paddingRight: 24,
                      paddingTop: 8,
                      paddingLeft: 24,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF6943FF)),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      content:  Text(
                        '09:30 AM',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          color: Color(0xFF4F4F4F),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16,),
                    CustomContainerCard(
                      paddingBottom: 8,
                      paddingRight: 24,
                      paddingTop: 8,
                      paddingLeft: 24,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF4F4F4F)),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      content:  Text(
                        '10:00 AM',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          color: Color(0xFF4F4F4F),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavButton(
          onTap: () {
              Get.toNamed(AppRoutes.paymentScreen);
          },
          buttonText: 'Next',
        ),
      ),
    );
  }
}
