// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  bool isReadmore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Text(''),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isReadmore = !isReadmore;
              });
            },
            child: Text((isReadmore ? '' : 'ReadMore')))
      ]),
    );
  }
}

Widget buildText(String text) {
  var isReadmore;
  final lines= isReadmore ? null : 3;
  
  return Text(
    text,
    style: TextStyle(fontSize: 16),
    maxLines: 25,
    overflow: isReadmore ? TextOverflow.visible: TextOverflow.ellipsis,
  );
}
