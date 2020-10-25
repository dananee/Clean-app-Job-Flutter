import 'package:clean_app/constante/appBar.dart';
import 'package:clean_app/constante/darwer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobBook extends StatefulWidget {
  @override
  _JobBookState createState() => _JobBookState();
}

class _JobBookState extends State<JobBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: yellowThing(),
      appBar: appBar(),
      drawer: drawer(context),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Text(
            "Job History",
            style: GoogleFonts.poppins(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "Refiid",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No. of Bedrooms were ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      '5',
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Extra include',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(
                  'Lounge Room ,kitchen',
                  style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Time',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(
                  '12/08/2016 - 23:10',
                  style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          Image(
            image: ExactAssetImage('images/paid.png'),
            height: 150,
            width: 150,
          )
        ]),
      ),
    );
  }

  Widget yellowThing() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.of(context).size.height * .1,
      color: Color(0xffffe700),
      child: Center(
        child: Text(
          'Help and Support Center',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
