import 'package:fitness/view/screens/profile/profile/inner_widgets/profile_bottom_section.dart';
import 'package:fitness/view/screens/profile/profile/inner_widgets/profile_height_weight_section.dart';
import 'package:fitness/view/screens/profile/profile/inner_widgets/profile_sectioin.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              const SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    children: [
                      ProfileSection(),
                      SizedBox(
                        height: 20,
                      ),
                      ProfileHeightweightSection(),
                      SizedBox(
                        height: 30,
                      ),
                      ProfileBottomSection()
                    ],
                  ))
      ),
    ));
  }
}
