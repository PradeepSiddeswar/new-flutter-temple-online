import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:templ_online/screens/Dio_screen.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

var data;

class _ScreenState extends State<Screen> {
  // late Future<Post> post;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res =
        await http.get(Uri.parse('http://192.168.1.139:5000/country/getAll'));
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: data?.length?? 0,
      itemBuilder: (BuildContext context, int index) {
       return Container(
           child: Text(data[index]["country"]),
       );
      },
    ));
  }
}
