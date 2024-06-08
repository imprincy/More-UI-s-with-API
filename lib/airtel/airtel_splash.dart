import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushNamed(context, 'homeScreen');
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image.asset('assets/images/airtel.jpeg',height: 250,width: 150,))),
    );
  }
}