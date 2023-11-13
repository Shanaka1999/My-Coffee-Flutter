import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Coffee Order",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFF2C2C),
      ),
      home: SplashScreen(),

    );
  }

  // This widget is the root of your application.

}
