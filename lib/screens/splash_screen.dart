import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2),
        ()=> Navigator.push(
            context, MaterialPageRoute(
              builder: (context)=> LoginScreen(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splash2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png", // Provide the path to your PNG logo
                    width: 1000, // Adjust the width as needed
                    height: 100, // Adjust the height as needed
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Magic Coffee",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                  SizedBox(height: 20), // Add some space between text and logo

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
