import 'package:clean_app/constante/appBar.dart';
import 'package:clean_app/constante/darwer.dart';
import 'package:clean_app/constante/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constante/form_widget.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: footer(context),
      appBar: appBar(),
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Settings',
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Update your details',
              style: GoogleFonts.poppins(
                fontSize: 25.0,
                color: Colors.grey[400],
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            form(false, 'Full Name', TextInputType.name),
            SizedBox(
              height: 20.0,
            ),
            form(false, 'Email Address', TextInputType.emailAddress),
            SizedBox(
              height: 20.0,
            ),
            form(false, 'Phone Number', TextInputType.phone),
            SizedBox(
              height: 20.0,
            ),
            form(true, 'Password', TextInputType.visiblePassword),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  //   return SigninPage();
                  // }));
                },
                padding:
                    EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                color: Colors.blue,
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
