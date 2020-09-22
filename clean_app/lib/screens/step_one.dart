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
  bool on = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
          centerTitle: true,
          title: Row(
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
          )),
      body: bodyItems(),
    );
  }

  Widget bodyItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
          height: 40.0,
        ),
        Text(
          "How many bedRooms you want to clean?",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 15.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        centeredItem(),
        extraAdd()
      ],
    );
  }

  Widget centeredItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FloatingActionButton(
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
            size: 35.0,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color(0xffd2d2d2),
              borderRadius: BorderRadius.circular(80)),
          child: Center(
            child: Text('$counter',
                style: GoogleFonts.poppins(
                    fontSize: 40.0, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        FloatingActionButton(
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
            size: 35.0,
          ),
        ),
      ],
    );
  }

  Widget drawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
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
    return InkWell(
      onTap: () {
        setState(() {
          on = true;
        });
      },
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          color: on == true ? Colors.yellow : Colors.grey,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            alignment: Alignment.center,

            image: ExactAssetImage("images/pump.png"),
            // fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
