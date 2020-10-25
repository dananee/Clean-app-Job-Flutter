import 'package:clean_app/constante/footer_widget.dart';
import 'package:clean_app/constante/form_widget.dart';
import 'package:clean_app/screens/sign/signin.dart';
import 'package:clean_app/screens/steps/step_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: footer(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .9,
                width: double.infinity,
                child: bodyForms()),
          ],
        ),
      ),
    );
  }

  Widget bodyForms() {
    TextInputType name = TextInputType.name;
    TextInputType email = TextInputType.emailAddress;
    TextInputType pass = TextInputType.visiblePassword;
    TextInputType phone = TextInputType.phone;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Registre",
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w600)),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "We help you clean your home",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 15),
        ),
        SizedBox(
          height: 40.0,
        ),
        form(false, 'Full Name', name),
        SizedBox(
          height: 20.0,
        ),
        form(false, 'Email Address', email),
        SizedBox(
          height: 20.0,
        ),
        form(false, 'Phone Number', phone),
        SizedBox(
          height: 20.0,
        ),
        form(true, 'Password', pass),
        SizedBox(
          height: 20.0,
        ),
        FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SigninPage();
              }));
            },
            padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
            color: Colors.blue,
            child: Text(
              "Registre",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
              ),
            )),
      ],
    );
  }
}
