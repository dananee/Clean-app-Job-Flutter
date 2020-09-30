import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepOne extends StatefulWidget {
  static String id = "StepOne";
  StepOne({Key key}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  int counter = 1;
  bool changeColor;
  bool changeColor1;
  bool changeColor2;

  Color vaccumColor = Colors.grey[300];
  Color broomColor = Colors.grey[300];
  Color faucetColor = Colors.grey[300];

  void getColorChange() {
    if (changeColor == true) {
      changeColor = false;
    } else {
      changeColor = true;
      changeColor1 = false;
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
      body: bodyItems(),
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
        SizedBox(
          height: 25.0,
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
          height: 20.0,
        ),
        centeredItem(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Extra To Add",
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 20.0, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              extraAdd(),
              extraAdd1(),
              extraAdd2(),
            ],
          ),
        ),
        Expanded(
            // padding: EdgeInsets.only(top: 40.0),
            child: Align(
                alignment: Alignment.bottomCenter, child: flatButtonBottom())),
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

  Widget drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
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
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: 150,
        width: 95,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Image(
                image: ExactAssetImage("images/pump.png"),
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.height * .1,
              ),
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
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: 150,
        width: 95,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Image(
                image: ExactAssetImage("images/pump.png"),
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.height * .1,
              ),
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

  Widget extraAdd2() {
    return FlatButton(
      onPressed: () {
        setState(() {
          getColorChange2();
        });
      },
      color: changeColor2 ? Colors.yellow : Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        height: 150,
        width: 95,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Image(
                image: ExactAssetImage("images/pump.png"),
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.height * .1,
              ),
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

  Widget flatButtonBottom() {
    return Container(
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width,
      child: FlatButton(
          color: Colors.blue,
          onPressed: () {},
          child: Text(
            'Next > Step 2',
            style: GoogleFonts.poppins(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          )),
    );
  }
}
