import 'package:clean_app/screens/constante/navigators.dart';
import 'package:clean_app/screens/steps/step_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constante/darwer.dart';

class StepTwo extends StatefulWidget {
  static String id = "StepTwo";
  StepTwo({Key key}) : super(key: key);

  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
          centerTitle: true,
          title: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  height: 35.0,
                  width: 30.0,
                  child: Image(
                    image: ExactAssetImage("images/women.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("clean")
              ],
            ),
          )),
      body: SafeArea(child: bodyItems()),
    );
  }

  Widget bodyItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Step 1 of 3",
            style: GoogleFonts.poppins(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Text(
          "Home Details",
          style: GoogleFonts.poppins(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 45.0),
        ),
        // Expanded(
        //     // padding: EdgeInsets.only(top: 40.0),
        //     child: Align(
        //         alignment: Alignment.bottomCenter,
        //         child: flatButtonBottom(
        //             context, Navigator.pushNamed(context, StepTwo.id)))),
      ],
    );
  }
}
