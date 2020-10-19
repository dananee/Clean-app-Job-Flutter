import 'package:clean_app/constante/title_icon.dart';
import 'package:clean_app/screens/promotions_page.dart';
import 'package:clean_app/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget drawer(context) {
  return Drawer(
    child: Container(
      color: Color(0xff008afa),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Padding(
              padding: EdgeInsets.only(left: 80.0, bottom: 20.0),
              child: titleIcon("images/women.png", "clean", 35, 30, 25)),
          Text(
            'Menu',
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(
              'Tom Hanks',
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(
                left: 60.0,
                bottom: 20.0,
                right: 50.0,
              ),
              child: titleIcon("images/pump.png", "   Book Job", 50.0, 51, 20),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.7,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(
                  left: 60.0, bottom: 20.0, right: 50.0, top: 20.0),
              child: titleIcon(
                  "images/shtaba.png", "   Job History", 50.0, 51, 20),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.7,
          ),
          InkWell(
            hoverColor: Colors.lightBlueAccent,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: 60.0, bottom: 20.0, right: 50.0, top: 20.0),
              child:
                  titleIcon("images/robini.png", "   Settings", 50.0, 51, 20),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.7,
          ),
          InkWell(
            hoverColor: Colors.lightBlueAccent,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PromoPage();
              }));
            },
            child: Padding(
              padding: EdgeInsets.only(left: 60.0, right: 50.0, top: 20.0),
              child:
                  titleIcon("images/krata.png", "   Promotions", 50.0, 51, 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'All Rights Reserved   |   2020 Help and Support Center',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
