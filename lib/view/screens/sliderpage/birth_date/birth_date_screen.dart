import 'package:fitness/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/app_colors.dart';

class BirthDateScreen extends StatefulWidget {
  const BirthDateScreen({super.key});

  @override
  State<BirthDateScreen> createState() => _BirthDateScreenState();
}

class _BirthDateScreenState extends State<BirthDateScreen> {
  List<String> day = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '08',
    '09',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
  ];
  List<String> year = [
    '1980',
    '1981',
    '1982',
    '1983',
    '1984',
    '1985',
    '1986',
    '1987',
    '1988',
    '1989',
    '1990',
    '1991',
    '1992',
    '1993',
    '1994',
    '1995',
    '1996',
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
  ];
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  int monthText=0;
  int dayText=0;
  int yearText=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppStrings.whatsYourBirthdate,
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryTextColor),
            )),
        const SizedBox(
          height: 82,
        ),
        SizedBox(
          height: 338,
          width: 244,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 24,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      dayText=value;
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  diameterRatio: 2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: day.length,
                    builder: (context, index) {
                      return Text(
                        day[index],
                        style:  TextStyle(
                            fontSize: 16,
                            color:dayText==index ?AppColors.brandColor : AppColors.secondaryTextColor,
                            fontWeight: FontWeight.w700),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 92,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                    monthText = value;
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  diameterRatio: 2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: months.length,
                    builder: (context, index) {
                      return Text(
                        months[index],
                        style:  TextStyle(
                            fontSize: 16,
                            color:monthText ==index ? AppColors.brandColor : AppColors.secondaryTextColor,
                            fontWeight: FontWeight.w700),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 46,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      yearText=value;
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  diameterRatio: 2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: year.length,
                    builder: (context, index) {
                      return Text(
                        year[index],
                        style:  TextStyle(
                            fontSize: 16,
                            color:yearText==index ?AppColors.brandColor : AppColors.secondaryTextColor,
                            fontWeight: FontWeight.w700),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
