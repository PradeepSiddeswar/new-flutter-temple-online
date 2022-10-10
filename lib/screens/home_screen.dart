// ignore_for_file: unnecessary_const, prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:templ_online/screens/about_screen.dart';
import 'package:templ_online/screens/admin_screen.dart';
import 'package:templ_online/screens/blog_screen.dart';
import 'package:templ_online/screens/events_screen.dart';
import 'package:templ_online/screens/search_screen.dart';
import 'package:templ_online/screens/sign_up.dart';
// import 'package:dio/dio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static const appTitle = '';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // title: appTitle,
        // home: MyHomePage(title: appTitle),
        );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

// void getHttp() async {
//   try {
//     var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title,
              textDirection: TextDirection.ltr,
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ))),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset('images/welcome1.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // // Center(child: Text("Temple")),
                  // // Gradient: LinearGradient(
                  // //   begin:.Alignment.topRight,
                  // //   end: Alignment.bottomLeft,
                  // // )

                  // Flexible(
                  //   child: Expanded(

                  //     flex: 1,
                  //     child: Image.asset(

                  //       'images/welcome2.jpg',

                  //       fit: BoxFit.cover,
                  //       height: 400,
                  //       color: Color.alphaBlend(
                  //           Color.fromARGB(120, 0, 0, 0), Colors.transparent),
                  //       colorBlendMode: BlendMode.darken,

                  //       // filterQuality: FilterQuality.low,
                  //     ),

                  //   ),

                  // ),
                ],
              ),

              CarouselSlider(
                options: CarouselOptions(height: 250.0),
                items: [
                  Image.asset(
                    'images/welcome3.jpeg',
                  ),
                  Image.asset('images/welcome4.jpeg', height: 400.0),
                  Image.asset('images/welcome5.jpeg'),
                  Image.asset('images/welcome6.jpeg'),
                  Image.asset('images/welcome7.jpeg'),
                  Image.asset('images/welcome8.jpeg'),
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(0, 190, 194, 197)),
                        child: i,
                      );
                    },
                  );
                }).toList(),
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

              // <-- SEE HERE
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Search'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SearchScreen()));
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AboutScreen()));
              },
            ),
            ListTile(
              title: const Text('Blog'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BlogScreen()));
              },
            ),
            ListTile(
              title: const Text('Events'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Eventscreen()));
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Sign_Up()));
              },
            ),
            ListTile(
              title: const Text('Admin'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AdminScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
