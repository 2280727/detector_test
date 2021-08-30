// Import Dependencies
import 'package:detector_test/login/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      // app screen laoding time
      seconds: 5,
      navigateAfterSeconds: Login(),
      // text title on screen
      
      title: Text(
        'MURIMI',
        // text style and color
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 32,
            color: Color(0xFF1B5E20)),
      ),
      
      // image for screen
      //image: Image.asset("assets/soybean.JPG"),
      // screen background color
      backgroundColor: Colors.white,
      // image size on screen
      //photoSize: 50,
      loaderColor: Color(0xFF1B5E20),
    );
  }
}
