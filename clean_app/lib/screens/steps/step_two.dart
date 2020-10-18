import 'package:clean_app/constante/bottom_button.dart';
import 'package:clean_app/constante/navigators.dart';
import 'package:clean_app/screens/steps/step_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:clean_app/constante/darwer.dart';

class StepTwo extends StatefulWidget {
  static String id = "StepTwo";
  StepTwo({Key key}) : super(key: key);

  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  // Future<DateTime> _timeDetails(BuildContext context) async {
  //   final DateTime picker = await showDatePicker(
  //       context: context, firstDate: DateTime(2020), lastDate: DateTime(2023));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buttomButton(context, 2, null),
      drawer: drawer(),
      appBar: AppBar(
          centerTitle: true,
          title: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  height: 30.0,
                  width: 25.0,
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
      body: SingleChildScrollView(child: SafeArea(child: bodyItems())),
    );
  }

  Widget bodyItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .08,
        ),
        Text(
          "Step 2 of 3",
          style: GoogleFonts.poppins(
            fontSize: 30.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          "Time Details",
          style: GoogleFonts.poppins(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 45.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: CupertinoDatePicker(
            initialDateTime: dateTime,
            onDateTimeChanged: (dateTime) {
              setState(() {
                dateTime = dateTime;
              });
            },
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          'Special Instructions',
          style: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 30.0, right: 30.0, bottom: 20.0, top: 10.0),
          child: TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black, style: BorderStyle.solid, width: 20.0),
              ),
              hintText:
                  'Type any special instruction and any other instructions that might help us ?',
              hintStyle: GoogleFonts.poppins(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600]),
            ),
          ),
        ),
        // Align(
        //     alignment: Alignment.bottomCenter,
        //     child: buttomButton(context, 2, null)),
      ],
    );
  }
}
