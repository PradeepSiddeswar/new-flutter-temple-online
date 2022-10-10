// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:templ_online/Posts.dart';
// import 'package:templ_online/screens/Api_service.dart';
import 'package:http/http.dart' as http;

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  // List<Post>? posts;
  // var isLoaded = false;

  var data;
  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    var res =
        await http.get(Uri.parse('http://192.168.1.139:5000/country/getAll'));
        data = jsonDecode(res.body);
        print(res.body);
        setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data?.length,
        itemBuilder: (context, index) {
          return Container(
              child: Text(data ? data![index].id : null),
              );
        },
        // itemCount: data?.length,
      ),
    );
  }
}

