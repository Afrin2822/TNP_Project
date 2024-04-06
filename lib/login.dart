import 'package:flutter/material.dart';
import 'package:tnpfinal/studentDisplay.dart';
// import 'package:demo_project/studentDisplay.dart'


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TNP App'), // Add the heading "TNP App"
      ),
      body: SingleChildScrollView(
        child: Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 100),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              TextField(
                onChanged: (value) {
                  pass = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyStudent()),
                  );
                },
                child: Text('Submit'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: const Text(
                      'Not a user? Create an Account',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color(0xff4c505b),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:demo_project/studentDisplay.dart';
//
// class MyLogin extends StatefulWidget {
//   const MyLogin({Key? key});
//
//   @override
//   State<MyLogin> createState() => _MyLoginState();
// }
//
// class _MyLoginState extends State<MyLogin> {
//   String email = '';
//   String pass = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TNP App'), // Add the heading "TNP App"
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 100),
//           child: Column(
//             children: [
//               TextField(
//                 onChanged: (value) {
//                   email = value;
//                 },
//                 decoration: InputDecoration(
//                   fillColor: Colors.grey.shade100,
//                   filled: true,
//                   hintText: 'Email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 27,
//               ),
//               TextField(
//                 onChanged: (value) {
//                   pass = value;
//                 },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   fillColor: Colors.grey.shade100,
//                   filled: true,
//                   hintText: 'Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyStudent()),);
//
//                     },
//                     child: Text('Submit'),
//                   ),
//
//               //     CircleAvatar(
//               //       radius: 30,
//               //       backgroundColor: const Color(0xff4c505b),
//               //       child: InkWell(
//               //         onTap: () async {
//               //           try {
//               //             UserCredential userCredential =
//               //             await FirebaseAuth.instance
//               //                 .signInWithEmailAndPassword(
//               //               email: email,
//               //               password: pass,
//               //             );
//               //             Navigator.pushNamed(context, 'location');
//               //           } on FirebaseAuthException catch (e) {
//               //             String errorMessage = '';
//               //             if (e.code == 'user-not-found') {
//               //               errorMessage = 'No user found for that email.';
//               //             } else if (e.code == 'wrong-password') {
//               //               errorMessage =
//               //               'Wrong password provided for that user.';
//               //             }
//               //             ScaffoldMessenger.of(context).showSnackBar(
//               //               SnackBar(
//               //                 content: Text(errorMessage),
//               //                 backgroundColor: Colors.red,
//               //               ),
//               //             );
//               //           }
//               //         },
//               //         child: const Icon(
//               //           Icons.forward,
//               //           size: 40.0,
//               //           color: Colors.white,
//               //         ),
//               //       ),
//               //     ),
//               //   ],
//               // ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, 'register');
//                     },
//                     child: const Text(
//                       'Not a user? Create an Account',
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                         fontSize: 18,
//                         color: Color(0xff4c505b),
//                       ),
//                     ),
//                   ),
//                   // TextButton(
//                   //   onPressed: () {
//                   //     Navigator.pushNamed(context, 'forgot');
//                   //   },
//                   //   child: const Text(
//                   //     'Forgot Password ? ',
//                   //     style: TextStyle(
//                   //       decoration: TextDecoration.underline,
//                   //       fontSize: 18,
//                   //       color: Color(0xff4c505b),
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               )
//             ],
//           ),
//         // ),
//         ]
//       ),),
//       )
//     );
//   }
// }
