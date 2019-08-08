import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/login/signin_page.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/splash/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Future<UserDetails> userExist = checkUserStatus();
      userExist.then((userDetails) {
        if (userDetails.userName != null && userDetails.userName != "") {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage(userDetails)));
        } else {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignInPage()));
        }
//        Navigator.of(context).pop();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlutterLogo(
        size: 500,
      )),
    );
  }

  Future<UserDetails> checkUserStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    UserDetails userDetails = UserDetails.constructor();
    userDetails.userName =  prefs.getString('userName');
    userDetails.eMailAdress =  prefs.getString('eMailAdress');
    userDetails.photoUrl =  prefs.getString('photoUrl');
    userDetails.loginMode =  prefs.getString('loginMode');
    return userDetails;
  }
}
