import 'package:blood_donation_app/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      // '/login': (context) => Login(),
      // '/booking': (context) => Booking(),
      // '/survey': (context) => Survey(),
    },
  ));
}