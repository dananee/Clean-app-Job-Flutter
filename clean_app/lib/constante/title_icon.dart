import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleIcon(String image, String title, double h, double w, double size) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: h,
        width: w,
        child: Image(
          image: ExactAssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: size,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      )
    ],
  );
}
