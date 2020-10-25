import 'package:clean_app/constante/appBar.dart';
import 'package:clean_app/constante/darwer.dart';
import 'package:clean_app/screens/history/job_book.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobHisto extends StatefulWidget {
  @override
  _JobHistoState createState() => _JobHistoState();
}

class _JobHistoState extends State<JobHisto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: yellowThing(),
        drawer: drawer(context),
        appBar: appBar(),
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
              "Following are the jobs you \n booked with us",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return listHistoris(index + 1);
                },
              ),
            ),
          ]),
        ));
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

  Widget listHistoris(int index) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$index.',
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'REFId667',
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "12/08/2016 - 23:10",
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
            ),
          ),
          IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return JobBook();
                }));
              })
        ],
      ),
    );
  }
}
