import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget flatButtonBottom(context, dynamic nav) {
  return Container(
    height: MediaQuery.of(context).size.height * .12,
    width: MediaQuery.of(context).size.width,
    child: FlatButton(
        color: Colors.blue,
        onPressed: () {
          nav;
        },
        child: Text(
          'Next > Step 2',
          style: GoogleFonts.poppins(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        )),
  );
}
