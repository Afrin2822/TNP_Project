import 'package:flutter/material.dart';
import 'package:tnpfinal/FrequentCompany.dart';
import 'package:tnpfinal/DreamCompany.dart';
// import 'package:demo_project/studentDisplay.dart';

class MyCompany extends StatefulWidget {
  const MyCompany({Key? key});

  @override
  State<MyCompany> createState() => _MyCompanyState();
}

class _MyCompanyState extends State<MyCompany> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TNP App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, // Change these colors as per your preference
              Colors.green,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'About the companies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to Admin Login Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDreamCompany()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(60), // Adjust button height
              ),
              child: Text('Dream Company'),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                // Navigate to Student Login Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyFrequentCompany()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(60), // Adjust button height
              ),
              child: Text('Frequently visited Company'),
            ),
            SizedBox(height: 60),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigate to Authority Login Page
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const MyTnp()),
            //     );
            //   },
            //   child: Text('Authority'),
            // ),
            SizedBox(height: 60), // Additional spacing
            SizedBox(height: 60), // Additional spacing
            // TextField(
            //   readOnly: true,
            //   decoration: InputDecoration(
            //     hintText: 'Here to write about pict',
            //     border: InputBorder.none,
            //   ),
            //   maxLines: 4,
            // ),
            // Text(
            //   'Some static information goes here', // Add your static information here
            //   style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.normal),
            // ),
          ],
        ),
      ),
    );
  }
}
