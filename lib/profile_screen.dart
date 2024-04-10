import 'package:tnpfinal/input.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<DocumentSnapshot> _userDataFuture;

  @override
  void initState() {
    super.initState();
    _userDataFuture = fetchUserData();
  }

  Future<DocumentSnapshot> fetchUserData() async {
    // Replace 'users' with your Firestore collection name
    final userData = await FirebaseFirestore.instance.collection('users').doc('upKzipVw36DRaaOVDK0U').get();
    return userData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Navigate to the edit profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyInput()),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: _userDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final userData = snapshot.data!.data() as Map<String, dynamic>;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display Profile Photo
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    // Use default profile picture asset or network image
                    // backgroundImage: AssetImage('assets/default_profile.png'),
                    // Replace 'profile_photo_url' with the key of profile photo URL in your Firestore data
                    backgroundImage: NetworkImage(userData['profile_photo_url'] ?? ''),
                  ),
                ),
                SizedBox(height: 20),
                // Display user data using ListTile
                buildUserDataTile('Name', snapshot.data!['Name']),
                buildUserDataTile('Mobile Number', snapshot.data!['Mobile Number']),
                buildUserDataTile('Date of Birth', snapshot.data!['Date of Birth']),
                buildUserDataTile('Address', snapshot.data!['Address']),
                buildUserDataTile('Branch', snapshot.data!['Branch']),
                buildUserDataTile('Roll Number', snapshot.data!['Roll Number']),
                buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
                // buildUserDataTile('AMCAT Automata Score', snapshot.data!['AMCAT Automata Score']),
                // buildUserDataTile('AMCAT Logical Score', snapshot.data!['AMCAT Logical Ability Score']),
                // buildUserDataTile('AMCAT Quantitative Score', snapshot.data!['AMCAT Quantitative Ability Score']),
                // buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
                // buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildUserDataTile(String title, String? value) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value ?? ''),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit Profile Screen'),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:demo_project/input.dart';

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   late Future<DocumentSnapshot> _userDataFuture;

//   @override
//   void initState() {
//     super.initState();
//     _userDataFuture = fetchUserData();
//   }

//   Future<DocumentSnapshot> fetchUserData() async {
//     // Get the current user ID
//     String? userId = FirebaseAuth.instance.currentUser?.uid;
//     if (userId != null) {
//       // Replace 'users' with your Firestore collection name
//       return await FirebaseFirestore.instance.collection('users').doc(userId).get();
//     } else {
//       throw Exception('User ID not found');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.edit),
//             onPressed: () {
//               // Navigate to the edit profile page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyInput()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: FutureBuilder<DocumentSnapshot>(
//         future: _userDataFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//           final userData = snapshot.data!.data() as Map<String, dynamic>;
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Display Profile Photo
//                 Center(
//                   child: CircleAvatar(
//                     radius: 50,
//                     // Use default profile picture asset or network image
//                     // backgroundImage: AssetImage('assets/default_profile.png'),
//                     // Replace 'profile_photo_url' with the key of profile photo URL in your Firestore data
//                     backgroundImage: NetworkImage(userData['profile_photo_url'] ?? ''),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Display user data using ListTile
//                 buildUserDataTile('Name', snapshot.data!['Name']),
//                 buildUserDataTile('Mobile Number', snapshot.data!['Mobile Number']),
//                 buildUserDataTile('Date of Birth', snapshot.data!['Date of Birth']),
//                 buildUserDataTile('Address', snapshot.data!['Address']),
//                 buildUserDataTile('Branch', snapshot.data!['Branch']),
//                 buildUserDataTile('Roll Number', snapshot.data!['Roll Number']),
//                 buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget buildUserDataTile(String title, String? value) {
//     return ListTile(
//       title: Text(title),
//       subtitle: Text(value ?? ''),
//     );
//   }
// }

// class EditProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: Center(
//         child: Text('Edit Profile Screen'),
//       ),
//     );
//   }
// }





// import 'package:pbl_saiee/input.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   late Future<DocumentSnapshot> _userDataFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _userDataFuture = fetchUserData();
//   }
//
//   Future<DocumentSnapshot> fetchUserData() async {
//     // Replace 'users' with your Firestore collection name
//     final userData = await FirebaseFirestore.instance.collection('users').doc('upKzipVw36DRaaOVDK0U').get();
//     return userData;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.edit),
//             onPressed: () {
//               // Navigate to the edit profile page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyInput()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: FutureBuilder<DocumentSnapshot>(
//         future: _userDataFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//           final userData = snapshot.data!.data() as Map<String, dynamic>;
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Display Profile Photo
//                 Center(
//                   child: CircleAvatar(
//                     radius: 50,
//                     // Use default profile picture asset or network image
//                     // backgroundImage: AssetImage('assets/default_profile.png'),
//                     // Replace 'profile_photo_url' with the key of profile photo URL in your Firestore data
//                     backgroundImage: NetworkImage(userData['profile_photo_url'] ?? ''),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Display user data using ListTile
//                 buildUserDataTile('Name', snapshot.data!['Name']),
//                 buildUserDataTile('Mobile Number', snapshot.data!['Mobile Number']),
//                 buildUserDataTile('Date of Birth', snapshot.data!['Date of Birth']),
//                 buildUserDataTile('Address', snapshot.data!['Address']),
//                 buildUserDataTile('Branch', snapshot.data!['Branch']),
//                 buildUserDataTile('Roll Number', snapshot.data!['Roll Number']),
//                 buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget buildUserDataTile(String title, String? value) {
//     return ListTile(
//       title: Text(title),
//       subtitle: Text(value ?? ''),
//     );
//   }
// }
//
// class EditProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: Center(
//         child: Text('Edit Profile Screen'),
//       ),
//     );
//   }
// }
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:demo_project/input.dart';
//
// // class ProfileScreen extends StatefulWidget {
// //   @override
// //   _ProfileScreenState createState() => _ProfileScreenState();
// // }
//
// // class _ProfileScreenState extends State<ProfileScreen> {
// //   late Future<DocumentSnapshot> _userDataFuture;
//
// //   @override
// //   void initState() {
// //     super.initState();
// //     _userDataFuture = fetchUserData();
// //   }
//
// //   Future<DocumentSnapshot> fetchUserData() async {
// //     // Get the current user ID
// //     String? userId = FirebaseAuth.instance.currentUser?.uid;
// //     if (userId != null) {
// //       // Replace 'users' with your Firestore collection name
// //       return await FirebaseFirestore.instance.collection('users').doc(userId).get();
// //     } else {
// //       throw Exception('User ID not found');
// //     }
// //   }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Profile'),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.edit),
// //             onPressed: () {
// //               // Navigate to the edit profile page
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => MyInput()),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //       body: FutureBuilder<DocumentSnapshot>(
// //         future: _userDataFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           }
// //           if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           }
// //           final userData = snapshot.data!.data() as Map<String, dynamic>;
// //           return Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 // Display Profile Photo
// //                 Center(
// //                   child: CircleAvatar(
// //                     radius: 50,
// //                     // Use default profile picture asset or network image
// //                     // backgroundImage: AssetImage('assets/default_profile.png'),
// //                     // Replace 'profile_photo_url' with the key of profile photo URL in your Firestore data
// //                     backgroundImage: NetworkImage(userData['profile_photo_url'] ?? ''),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Display user data using ListTile
// //                 buildUserDataTile('Name', snapshot.data!['Name']),
// //                 buildUserDataTile('Mobile Number', snapshot.data!['Mobile Number']),
// //                 buildUserDataTile('Date of Birth', snapshot.data!['Date of Birth']),
// //                 buildUserDataTile('Address', snapshot.data!['Address']),
// //                 buildUserDataTile('Branch', snapshot.data!['Branch']),
// //                 buildUserDataTile('Roll Number', snapshot.data!['Roll Number']),
// //                 buildUserDataTile('Year of Passing', snapshot.data!['Year of Passing']),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
//
// //   Widget buildUserDataTile(String title, String? value) {
// //     return ListTile(
// //       title: Text(title),
// //       subtitle: Text(value ?? ''),
// //     );
// //   }
// // }
//
// // class EditProfileScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Edit Profile'),
// //       ),
// //       body: Center(
// //         child: Text('Edit Profile Screen'),
// //       ),
// //     );
// //   }
// // }
//
//
