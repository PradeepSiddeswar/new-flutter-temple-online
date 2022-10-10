// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 10),
        child: Stack(children: [
          Container(
           
            child: Image.asset(
              'images/welcome9.jpeg',
              // colorBlendMode: BlendMode.darken,
              // color: Color.alphaBlend(
              //   Color.fromARGB(120, 0, 0, 0), Colors.transparent ),
              //
              
            ),
            
          ),
          Container(
               padding: EdgeInsets.only(top: 20, left: 10),
            child: Text('About Us', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,

            ),),
          ),
          Container(
            padding: EdgeInsets.only(top: 60, left: 10),
            child: Text('Temple.online is a one-stop solution for all your divine \n needsregarding temples.We are more than happy render \n the servicethrough our website and our mobile application', style: TextStyle(
              color: Colors.white
            ),)),
            Container(
                padding: EdgeInsets.only(top: 120, left: 10),
              child: Text('In our website,we provide all the details about the temples of india, provide contact details of the priests of the temples, list of auspicious days & Festivalas, provide contact details of astrolgers and many more.',style: TextStyle(
              color: Colors.white)),
            ),
             Container(
                padding: EdgeInsets.only(top: 200, left: 10),
              child: Text('We are working towards the solution for all your temple & Astrology needs with just one click of a button.',style: TextStyle(
             
              color: Colors.white)),
            ),
            
            Container(
              padding: EdgeInsets.only(top: 240, left: 10),
              child: Text('Fore more information, please Contact hello@greedata.digital \n or +91 9108856735', style: TextStyle(
              color: Colors.white)),
            ),
           Container(
             child: Center(child: Text('Templ.', 
             style: GoogleFonts.playfairDisplay(
               textStyle: TextStyle(
                 fontSize: 30.0,
                 fontWeight: FontWeight.bold,
               )
             ),
             )),
           ),
           Container(
             margin: EdgeInsets.all(10.0),
               padding: EdgeInsets.only(top: 200, left: 10),
             child: Center(child: Text('A Hindu Temple can be simple structured by the side of the road  or a large complex including many buildings.  Temple serve as dwelling places for deities, surronded by markets selling offerings and flowers.  The inner santuaries are samll and indended for a few worshippers at a time.')),
           ),
           Container(
             padding: EdgeInsets.only(top: 500, left: 5),
             child:Center(
               child: Text(
                  "Ganesh | Perumul | Murugar | Shivan | Ayyapan |Amman ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(top: 600, left: 10),
             child:Center(
               child: Text(
                  "Home | About Us | Contact Us | Event | Privacy Policy |Refund Policy ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
             ),
           )
        ]),
      ),
      
      
    );
  }
}
