import 'package:clean_app/screens/sign/signin.dart';
import 'package:clean_app/screens/sign/signup_page.dart';
import 'package:clean_app/screens/steps/step_one.dart';
import 'package:clean_app/screens/steps/step_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(CleanApp());

class CleanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        StepOne.id: (context) => StepOne(),
        StepTwo.id: (context) => StepTwo(),
      },
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        primaryColorDark: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: StepOne(),
    );
  }
}
