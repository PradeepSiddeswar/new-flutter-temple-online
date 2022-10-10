// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:templ_online/screens/sign_up.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  String? signup;

  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  'images/welcome10.png',
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                  child: Text(
                signup.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
              if (signup.toString() == "user_login")
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(top: 350, left: 80),
                      child: Center(
                        child: Row(
                          children: [
                            Text(" Don't have an account ?"),
                            TextButton(
                              onPressed: (() {}),
                              child: Text(
                                "Signup Now!",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              if (signup.toString() == "vendor_login")
                Container(
                  padding: EdgeInsets.only(top: 60, left: 80),
                  child: Center(
                      child: Row(
                    children: [
                      Text("Don't have account ? "),
                      TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "Signup Now!",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )),
                ),
              if (signup.toString() == "iyer_login")
                Container(
                  padding: EdgeInsets.only(top: 60, left: 80),
                  child: Center(
                    child: Container(
                        child: Row(
                      children: [
                        Text("Don't have account?"),
                        TextButton(
                          
                          onPressed: (() {}),
                          
                          child: Text(
                            "Signup Now!",
                            style: TextStyle(color: Colors.blue),
                            
                          ),
                          
                        )
                      ],
                    )),
                    
                  ),
                  
                ),
                  
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 400, left: 10, right: 20),
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
                  padding: const EdgeInsets.only(top: 310, left: 10, right: 20),
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
                          _isObscure ? Icons.visibility : Icons.visibility_off,
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
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 400, left: 250),
                  child: TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text(
                      'Forgot Password ?',
                    ),
                  ),
                ),
              ),
              Container(
                // height: 50,

                padding: const EdgeInsets.fromLTRB(160, 600, 10, 0),
                child: ElevatedButton(
                            child: const Text(
                              'Login',
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    //  BorderRadius.circular(20),

                    Container(
                      margin: EdgeInsets.fromLTRB(50, 40, 50, 50),
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(128, 150, 156, 156),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.only(top: 0, left: 0),
                            child: RadioListTile(
                              title: Text(
                                "User Login",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              groupValue: signup,
                              onChanged: (value) {
                                setState(() {
                                  signup = value.toString();
                                });
                              },
                              value: "user_login",
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.only(top: 180, left: 80),
                            child: RadioListTile(
                              title: Text(
                                "Vendor Login",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              groupValue: signup,
                              onChanged: (value) {
                                setState(() {
                                  signup = value.toString();
                                });
                              },
                              value: "vendor_login",
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.only(top: 220, left: 80),
                            child: RadioListTile(
                              title: Text(
                                "Iyer Login",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              groupValue: signup,
                              onChanged: (value) {
                                setState(() {
                                  signup = value.toString();
                                });
                              },
                              value: "iyer_login",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
