// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tnpfinal/studentDisplay.dart';

class MyAmcat extends StatefulWidget {
  const MyAmcat({Key? key});

  @override
  State<MyAmcat> createState() => _MyAmcatState();
}

class _MyAmcatState extends State<MyAmcat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amcat details'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
