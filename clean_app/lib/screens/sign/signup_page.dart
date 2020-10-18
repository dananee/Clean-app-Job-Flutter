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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .9,
                width: double.infinity,
                child: bodyForms()),
            footer(),
          ],
        ),
      ),
    );
  }

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
              Navigator.pushNamed(context, StepTwo.id);
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

  Widget footer() {
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
                color: Colors.black,
                fontSize: 10.0,
                fontWeight: FontWeight.w800),
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
}
