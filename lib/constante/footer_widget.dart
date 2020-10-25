import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget footer(context) {
  return Container(
    height: MediaQuery.of(context).size.height * .10,
    width: double.infinity,
    color: Colors.yellow,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "By registering, you agree all our",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("hhhh");
              },
              child: Text(
                "terms",
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              " and ",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w800),
            ),
            InkWell(
              onTap: () {
                print("hhhh");
              },
              child: Text(
                "conditions",
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
