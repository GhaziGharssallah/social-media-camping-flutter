import 'dart:async';

import 'package:flutter/material.dart';

import 'package:the_gorgeous_login/ui/login_page.dart';
import './ui/login_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void startTimer(){
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Image.asset('assets/loding.gif'),
        ),
      ),
    );
  }
}


