import 'package:fitness/view/screens/profile/edit_profile/inner_widgets/edit_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_strings.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/buttons/custom_button.dart';
import '../../../widgets/container/custom_container.dart';
import '../../../widgets/image/custom_image.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              width: 90,
            ),
            Text(
              'EDIT PROFILE',
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
              SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            const CustomImage(
                              imageSrc: AppImages.profileImg,
                              imageType: ImageType.png,
                              size: 50,
                            ),
                            Positioned(
                                right: 1,
                                bottom: 2,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                    child: const CustomImage(
                                      imageType: ImageType.svg,
                                      imageSrc: AppIcons.camera,
                                      imageColor: AppColors.whiteColor,
                                    )))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const EditProfileSection()
                    ],
                  ))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: CustomButton(
          buttonWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          titleText: AppStrings.update,
          titleSize: 16,
          titleWeight: FontWeight.w700,
          titleColor: AppColors.whiteColor,
          buttonBgColor: AppColors.brandColor,
          elevation: 0,
        ),
      ),
    ));
  }
}
