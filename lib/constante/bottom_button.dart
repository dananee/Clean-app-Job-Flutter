import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttomButton(context, int pageNumber, String id) {
  return InkWell(
    onTap: () {
      Navigator.of(context).pushNamed(id);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .1,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
          child: Text(
        'Next > Step $pageNumber',
        style: GoogleFonts.poppins(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      )),
    ),
  );
}
