import 'package:flutter/material.dart';
import 'package:tnpfinal/login.dart';
import 'package:tnpfinal/Tnp.dart';
import 'package:tnpfinal/studentLogin.dart';

class MyLoginOptionsPage extends StatefulWidget {
  const MyLoginOptionsPage({Key? key});

  @override
  State<MyLoginOptionsPage> createState() => _MyOptionsState();
}

class _MyOptionsState extends State<MyLoginOptionsPage> {
  @override
  Widget build(BuildContext context){
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Welcome to PICT TNP App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to Admin Login Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyLogin()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(50), // Adjust button height
              ),
              child: Text('Admin'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Student Login Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyStudentLogin()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(50), // Adjust button height
              ),
              child: Text('Student'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Authority Login Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyTnp()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(50), // Adjust button height
              ),
              child: Text('Authority'),
            ),
            SizedBox(height: 80), // Additional spacing
            SizedBox(height: 60), // Additional spacing
            Text(
              'This app provides information about Training and Placement activities', // Add your static information here
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:demo_project/login.dart';
// import 'package:demo_project/Tnp.dart';
//
// class MyLoginOptionsPage extends StatefulWidget {
//   const MyLoginOptionsPage({Key? key});
//
//   @override
//   State<MyLoginOptionsPage> createState() => _MyOptionsState();
// }
//
// class _MyOptionsState extends State<MyLoginOptionsPage> {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TNP App'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blue, // Change these colors as per your preference
//               Colors.green,
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: Text(
//                 'Welcome to PICT TNP App!',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to Admin Login Page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MyLogin()),
//                 );
//               },
//               child: Text('Admin'),
//             ),
//             SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to Student Login Page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MyLogin()),
//                 );
//               },
//               child: Text('Student'),
//             ),
//             SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to Authority Login Page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MyTnp()),
//                 );
//               },
//               child: Text('Authority'),
//             ),
//             SizedBox(height: 80), // Additional spacing
//             SizedBox(height: 60), // Additional spacing
//             // TextField(
//             //   readOnly: true,
//             //   decoration: InputDecoration(
//             //     hintText: 'Here to write about pict',
//             //     border: InputBorder.none,
//             //   ),
//             //   maxLines: 4,
//             // ),
//             Text(
//               'Some static information goes here', // Add your static information here
//               style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.normal),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:demo_project/login.dart';
// // import 'package:demo_project/Tnp.dart';
// //
// // class MyLoginOptionsPage extends StatefulWidget {
// //   const MyLoginOptionsPage({Key? key});
// //
// //   @override
// //   State<MyLoginOptionsPage> createState() => _MyOptionsState();
// // }
// //
// // class _MyOptionsState extends State<MyLoginOptionsPage> {
// //   @override
// //   Widget build(BuildContext context){
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('TNP App'),
// //       ),
// //       body: ListView(
// //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.only(bottom: 20),
// //             child: Text(
// //               'Welcome to PICT TNP App!',
// //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: () {
// //               // Navigate to Admin Login Page
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => MyLogin()),
// //               );
// //             },
// //             child: Text('Admin'),
// //           ),
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: () {
// //               // Navigate to Student Login Page
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => MyLogin()),
// //               );
// //             },
// //             child: Text('Student'),
// //           ),
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: () {
// //               // Navigate to Authority Login Page
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => const MyTnp()),
// //               );
// //             },
// //             child: Text('Authority'),
// //           ),
// //           SizedBox(height: 80), // Additional spacing
// //           SizedBox(height: 60), // Additional spacing
// //           TextField(
// //             readOnly: true,
// //             decoration: InputDecoration(
// //               hintText: 'About section of the app',
// //               border: OutlineInputBorder(),
// //             ),
// //             maxLines: 4,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
