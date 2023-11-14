import 'package:fitness/view/screens/profile/daily_report/inner_widgets/daily_report_total_month.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/container/custom_container.dart';
import 'inner_widgets/daily_report_progress.dart';

class DailyReportScreen extends StatefulWidget {
  const DailyReportScreen({super.key});

  @override
  State<DailyReportScreen> createState() => _DailyReportScreenState();
}

class _DailyReportScreenState extends State<DailyReportScreen> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
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
                ), content: const Icon(Icons.arrow_back_ios_new,size: 12,),
              ),
            ),
            const SizedBox(width: 90,),
            Text('DAILY REPORT',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              const SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DailyReportTotalMonth(),
                      DailyReportProgress()
                    ],
                  ))
      ),
    ));
  }
}
