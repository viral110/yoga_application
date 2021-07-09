import 'dart:async';

import 'package:Yoga/bottom.dart';
import 'package:Yoga/email.dart';
import 'package:flutter/material.dart';
import 'package:Yoga/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: missing_return
  Future checkFirst() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool _seen = (preferences.getBool('seen') ?? false);
    if (_seen) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => OnBoard()));
    } else {
      await preferences.setBool('seen', true);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Bottom()));
    }
  }

  var number = true;
  @override
  void initState() {
    super.initState();
    checkFirst();
    Timer(
      Duration(seconds: 10),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoard()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image(
        image: NetworkImage(
            "https://th.bing.com/th/id/R0923f72127f38b4566ec13a36e23893b?rik=Xv8fokzkJ%2fWm8A&riu=http%3a%2f%2fgetdrawings.com%2fimg%2ffree-yoga-clipart-silhouette-6.jpg&ehk=yV7arAbQYZcXsxy6Tl63RQWo20aI5jKhiCDN4jbmlVo%3d&risl=&pid=ImgRaw"),
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
