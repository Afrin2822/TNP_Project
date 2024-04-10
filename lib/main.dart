// import 'dart:js';
import 'dart:ui';


import 'package:tnpfinal/Company.dart';
import 'package:tnpfinal/DreamCompany.dart';
import 'package:tnpfinal/FrequentCompany.dart';
import 'package:flutter/material.dart';
import 'package:tnpfinal/Amcat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tnpfinal/input.dart';

//import 'package:pbl/Amcat.dart';
// import 'package:pbl/forecast.dart';
// import 'package:pbl/location.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sky_engine/_http/http.dart' as http;
import 'dart:convert';

import 'package:tnpfinal/register.dart';
import 'package:tnpfinal/Admin_login.dart';
import 'package:tnpfinal/firstpage.dart';
import 'package:tnpfinal/studentDisplay.dart';
import 'package:tnpfinal/Tnp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tnpfinal/studentLogin.dart';
import 'package:tnpfinal/myPdf.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyD8sBtI7EoaaZybDE85f34WyS-0LpLJrfE',
        appId: 'tnp-final',
        messagingSenderId: '...',
        projectId: 'tnp-final',
        storageBucket: 'tnp-final.appspot.com',)
  );




  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'options',//Initial screen for the user should be the location input screen
      routes: {
        'options' : (context) => MyLoginOptionsPage(),
        'login' : (context) => MyLogin(),
        //'forecast': (context) => MyForecast(userLocation: ''),
        // 'login_register': (context) => const LoginPage(),
        'studentDisplay' : (context) => const MyStudent(),
        // 'Amcat' : (context) => const MyAmcat(),
        'Company' : (context) => const MyCompany(),
        'DreamCompany' : (context) => const MyDreamCompany(),
        'FrequentCompany' : (context) => const MyFrequentCompany(),
        'Tnp' : (context) => const MyTnp(),
        'input' : (context) => const MyInput(),
        'studentLogin' : (context) => const MyStudentLogin(),
        'myPdf' :(context) => const MyPdf(),
       }));
}

