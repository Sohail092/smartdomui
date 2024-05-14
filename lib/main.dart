import 'package:flutter/material.dart';
import 'package:newsignupui/devicepage.dart';
import 'package:newsignupui/homeui.dart';
import 'package:newsignupui/loginui.dart';
import 'package:newsignupui/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signup',
    routes: {
      'signup': (context) => devicepage(),

    },
  ));
}

