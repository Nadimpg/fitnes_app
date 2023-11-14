import 'package:date_picker_timeline/extra/color.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/app_icons.dart';
import 'package:fitness/view/screens/activity/activity_screen.dart';
import 'package:fitness/view/screens/home/home_screen.dart';
import 'package:fitness/view/screens/profile/profile/profile_screen.dart';
import 'package:fitness/view/screens/search/search_screen.dart';
import 'package:fitness/view/widgets/image/custom_image.dart';
import 'package:fitness/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
   CustomNavBar({super.key, required this.currentIndex});
   final int currentIndex;
  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}
class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  @override
  void initState() {
    selectedIndex = widget.currentIndex;
    super.initState();
  }
  static const List<Widget> screens = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ActivityScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> manuBarItems = [
      MenuBarItems(
          text: "Home",
          index: 0,
          selectedIndex: selectedIndex,
          image: AppIcons.home),
      MenuBarItems(
          text: "Search",
          index: 1,
          selectedIndex: selectedIndex,
          image: AppIcons.search
      ),
      MenuBarItems(
          text: "Activity",
          index: 2,
          selectedIndex: selectedIndex,
          image: AppIcons.activity
      ),
      MenuBarItems(
          text: "Profile",
          index: 3,
          selectedIndex: selectedIndex,
          image: AppIcons.profile
      ),
    ];
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: Container(
          height: 60,alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(top: 15),
          decoration:   const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(manuBarItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: manuBarItems[index],
              );
            }),
          ),
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}

class MenuBarItems extends StatelessWidget {
   MenuBarItems(
      {super.key,
        required this.image,
        required this.index,
        required this.selectedIndex,
        required this.text});
  final String image;
  final String text;

  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomImage(
                imageColor:selectedIndex == index  ? const Color(0xFF6943FF):const Color(0xff777777),size:24,
                imageSrc: image),
            CustomText(
              fontSize: 12,fontWeight: FontWeight.w600,
              text: text,
              color: selectedIndex == index ?const Color(0xFF6943FF) : const Color(0xff777777),
            ),
          ],
        ),
      ],
    );
  }
}