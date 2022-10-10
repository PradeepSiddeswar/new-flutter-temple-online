// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Eventscreen extends StatefulWidget {
  const Eventscreen({super.key});

  @override
  State<Eventscreen> createState() => _EventscreenState();
}

class _EventscreenState extends State<Eventscreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Filters',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 114, 1, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              
            ),
            Container(
              padding: EdgeInsets.only(top: 280, left: 30),
              child: Text(
                "Events List",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 114, 1, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Expanded(
                   child: Card(
                       child: SingleChildScrollView(
                         child: Container(
                           height: 200.0,
                           width: 200.0,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                                         image: AssetImage("images/welcome5.jpeg"),
                                         // fit: BoxFit.fitWidth,
                                         alignment: Alignment.topCenter,
                             ),
                           ),
                           child: Container
                           
                           (
                             padding: EdgeInsets.only(top: 150.0, left: 30),
                             
                             child: Text("Aayutha pooja \n ambattur")),
                         ),
                       ),
                       
                     ),
                 ),
          Card(
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/welcome4.jpeg"),
              // fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Container
          
          (
            padding: EdgeInsets.only(top: 150.0, left: 60),
            
            child: Text("Dewali \n Trichy")),
        ),
          ),
          
               ],
             ),
          
          Row(
        children: [
             Card(
              child: Container(
                // padding: EdgeInsets.only(top: 150.0, left: 30),
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/welcome6.jpeg"),
                    // fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Container
                
                (
                  padding: EdgeInsets.only(top: 150.0, left: 30),
                  
                  child: Text("Pongal\n Perambalur")),
              ),
            ),
          Expanded(
            child: Card(
                child: Container(
                  // padding: EdgeInsets.only(top: 150.0, left: 30),
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/welcome8.jpeg"),
                      // fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Container
                  (
                    padding: EdgeInsets.only(top: 150.0, left: 30),
                    
                    child: Text("Thaipoosam \n Chennai")),
                ),
              ),
          ),
        ],
          ),
          Text('Templ.',
                  style: GoogleFonts.playfairDisplay(
                      textStyle: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ))),
              Text(
                  " A Hindu Temple can be simple structured by the  side   the road or a large complex including many buildings.  Temple serve as dwelling place for detites, surrounded by markets selling offering and flowers.  The inner santuaries are small and indended for a few worshippers at a time ",
                  textAlign: TextAlign.center),
              Text(
                "Ganesh | Perumul | Murugar | Shivan | Ayyapan |Amman\n  Home | About | Contct Us | Evet | Privacy Policy | Refound Policy |",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
