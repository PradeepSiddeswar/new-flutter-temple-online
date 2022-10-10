import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class Dio_screen extends StatefulWidget {
  const Dio_screen({super.key});

  @override
  State<Dio_screen> createState() => _Dio_screenState();
}

// ignore: prefer_const_declarations
final url = "https://jsonplaceholder.typicode.com/photos";

@override
 void initState() {
    // var initState = super.initState();

    getData();
  }


getData() async {
  var res = await http
      .get(Uri.http("jsonplaceholder.typicode.com", "photos"));
  print(res.body);
}

class _Dio_screenState extends State<Dio_screen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
