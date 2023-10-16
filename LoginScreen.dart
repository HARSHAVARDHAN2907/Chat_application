// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'homescreen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final userId = TextEditingController();
  final userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: userId,
                      decoration: InputDecoration(labelText: "Enter ID"),
                    ),
                    TextFormField(
                      controller: userName,
                      decoration: InputDecoration(labelText: "Enter Username"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          await ZIMKit().connectUser(
                              id: userId.text, name: userName.text);
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Text("Login"))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
