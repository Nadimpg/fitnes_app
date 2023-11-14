import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/view/widgets/buttons/bottom_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewsPopSection extends StatefulWidget {
  const ReviewsPopSection({super.key});

  @override
  State<ReviewsPopSection> createState() => _ReviewsPopSectionState();
}
class _ReviewsPopSectionState extends State<ReviewsPopSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,left: 20,right: 20),
      child: Column(
        children: [
          RatingBarIndicator(
            rating: 2.75,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: AppColors.linear,
            ),
            itemCount: 5,
            itemSize: 30,
            direction: Axis.horizontal,
          ),
          const SizedBox(height: 32,),
          Container(
            padding: const EdgeInsets.only(left: 10,top: 10),
            height: 200,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 15,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryTextColor
              ),
              maxLines: 3,
              decoration: const InputDecoration(
                  hintText: "give your review here........",
                  border: InputBorder.none
              ),
            ),
          ),
          const SizedBox(height: 24,),
          BottomNavButton(buttonText: 'Submit', onTap: () {
          },
          )
        ],
      ),
    );
  }
}
