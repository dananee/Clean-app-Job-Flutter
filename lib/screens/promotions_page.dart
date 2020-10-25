import 'package:clean_app/constante/appBar.dart';
import 'package:clean_app/constante/darwer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: appBar(),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Promotions',
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('images/minage.png'),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              '20% off',
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '40gg2020',
              style: GoogleFonts.poppins(
                fontSize: 25.0,
                color: Colors.blue,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Use code when paying for code',
              style: GoogleFonts.poppins(
                fontSize: 15.0,
                color: Colors.grey[300],
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
