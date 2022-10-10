// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  bool _isObscure = true;
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          child: Stack(children: [
            Container(
              child: Image.asset(
                'images/welcome10.png',
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 90, 40, 40),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(128, 150, 156, 156),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Admin Login',
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 80, left: 20, right: 20
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Number Is Required';
                                    }
                                    return null;
                                  },
                                  controller: phonenumberController,
                                  decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      labelText: 'Phone Number',
                                      labelStyle: TextStyle(
                                          // color: Colors.white,
                                          )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20
                            ),
                            child: TextFormField(
                               validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password Is Required';
                                    }
                                    return null;
                                  },
                              obscureText: _isObscure,
                              controller: passwordController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
              
                          padding: const EdgeInsets.fromLTRB(35, 40, 10, 25),
                          child: ElevatedButton(
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {
                              print(phonenumberController.text);
                              print(passwordController.text);
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
