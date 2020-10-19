import 'package:clean_app/constante/appBar.dart';
import 'package:clean_app/constante/bottom_button.dart';
import 'package:clean_app/constante/navigators.dart';
import 'package:clean_app/constante/title_icon.dart';
import 'package:clean_app/main.dart';
import 'package:clean_app/screens/steps/step_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:clean_app/constante/darwer.dart';

class StepOne extends StatefulWidget {
  static String id = "StepOne";
  StepOne({Key key}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  int counter = 1;
  bool changeColor = false;
  bool changeColor1 = false;
  bool changeColor2 = false;

  Color vaccumColor = Colors.grey[300];
  Color broomColor = Colors.grey[300];
  Color faucetColor = Colors.grey[300];

  void getColorChange() {
    if (changeColor == true) {
      changeColor = false;
    } else {
      changeColor = true;
    }
  }

  getColorChange1() {
    if (changeColor1 == true) {
      changeColor1 = false;
    } else {
      changeColor1 = true;
    }
  }

  getColorChange2() {
    if (changeColor2 == true) {
      changeColor2 = false;
    } else {
      changeColor2 = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: appBar(),
      body: SafeArea(child: Center(child: bodyItems())),
    );
  }

  Widget bodyItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        Text(
          "Step 1 of 3",
          style: GoogleFonts.poppins(
            fontSize: 30.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          "Home Details",
          style: GoogleFonts.poppins(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 45.0),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Text(
          "How many bedRooms you want to clean?",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        centeredItem(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        Text(
          "Extra To Add",
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              extraAdd(),
              extraAdd1(),
              extraAdd2(),
            ],
          ),
        ),
        buttomButton(context, 1, StepTwo.id),
      ],
    );
  }

  Widget centeredItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          child: FloatingActionButton(
            heroTag: "btn1",
            backgroundColor: Color(0xffd2d2d2),
            elevation: 0.0,
            onPressed: () {
              setState(() {
                if (counter <= 0) {
                  return counter = 1;
                } else {
                  return counter -= 1;
                }
              });
            },
            child: Icon(
              Icons.remove,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Color(0xffd2d2d2),
              borderRadius: BorderRadius.circular(40)),
          child: Center(
            child: Text('$counter',
                style: GoogleFonts.poppins(
                    fontSize: 35.0, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          height: 40.0,
          width: 40.0,
          child: FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: Color(0xffd2d2d2),
            elevation: 0.0,
            onPressed: () {
              setState(() {
                if (counter <= 0) {
                  return counter = 1;
                } else {
                  return counter += 1;
                }
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget extraAdd() {
    return FlatButton(
      onPressed: () {
        setState(() {
          getColorChange();
        });
      },
      color: changeColor ? Colors.yellow : Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.height * .12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: ExactAssetImage("images/pump.png"),
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              "Lounge Room",
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget extraAdd1() {
    return FlatButton(
      onPressed: () {
        setState(() {
          getColorChange1();
        });
      },
      color: changeColor1 ? Colors.yellow : Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.height * .12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: ExactAssetImage("images/shtaba.png"),
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              "Kitchen",
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget extraAdd2() {
    return FlatButton(
      onPressed: () {
        setState(() {
          getColorChange2();
        });
      },
      color: changeColor2 ? Colors.yellow : Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.height * .12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: ExactAssetImage("images/robini.png"),
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              "Bathroom",
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
