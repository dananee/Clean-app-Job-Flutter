import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget form(bool pwd, String label, TextInputType textInputType) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        keyboardType: textInputType,
        textAlign: TextAlign.center,
        obscureText: pwd,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black, style: BorderStyle.solid, width: 20.0),
              borderRadius: BorderRadius.circular(30)),
          hintText: label,
          hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, color: Colors.grey[400]),
        ),
      ),
    ),
  );
}
