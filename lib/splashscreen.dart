import 'dart:async';

import 'package:bmi_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) {
                return MyHomePage();
              }));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text:
              TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.bold
                ),
                    children: [
                      TextSpan(
                        text: "B",
                        style: TextStyle(
                          color: Colors.white,
                        )
                      ),
                      TextSpan(
                          text: "M",
                          style: TextStyle(
                            color: Colors.green,
                          )
                      ),
                      TextSpan(
                          text: "I",
                          style: TextStyle(
                            color: Colors.white,
                          )
                      )
                  ]
              )
              ),
              Text("Find Your BMI",style: TextStyle(fontSize: 20,color: Colors.white),),
             // Text("Be Healthy",style: TextStyle(fontSize: 20,color: Colors.white),)

            ],

          ),
        ),
      )
    );

  }
}