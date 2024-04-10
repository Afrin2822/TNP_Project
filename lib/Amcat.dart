// import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(GraphApp());
// // }
//
// // class GraphApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Graph App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Student Scores Graph'),
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: StudentScoresGraph(),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// class StudentScoresGraph extends StatelessWidget {
//   const StudentScoresGraph({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final student = Student(
//       name: 'Prathamesh',
//       englishComprehension: 80,
//       quantitativeAbility: 85,
//       logicalAbility: 75,
//       managerialBasketSimulation: 70,
//       criticalReasoning: 90,
//       cPlusPlusProgramming: 60,
//     );
//
//     final maxScore = student.getMaxScore();
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Text(
//           'Student Scores - ${student.name}',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
//           textAlign: TextAlign.center,
//         ),
//         SizedBox(height: 20),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _buildBar(
//                 context,
//                 'English',
//                 student.englishComprehension,
//                 maxScore,
//                 Colors.orange,
//               ),
//               _buildBar(
//                 context,
//                 'Quantitative',
//                 student.quantitativeAbility,
//                 maxScore,
//                 Colors.green,
//               ),
//               _buildBar(
//                 context,
//                 'Logical',
//                 student.logicalAbility,
//                 maxScore,
//                 Colors.purple,
//               ),
//               _buildBar(
//                 context,
//                 'Managerial',
//                 student.managerialBasketSimulation,
//                 maxScore,
//                 Colors.teal,
//               ),
//               _buildBar(
//                 context,
//                 'Critical',
//                 student.criticalReasoning,
//                 maxScore,
//                 Colors.red,
//               ),
//               _buildBar(
//                 context,
//                 'C++',
//                 student.cPlusPlusProgramming,
//                 maxScore,
//                 Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildBar(
//       BuildContext context,
//       String label,
//       int score,
//       int maxScore,
//       Color color,
//       ) {
//     double barHeight = (score / maxScore) * 200; // Adjust the bar height
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Column(
//         children: [
//           Text(
//             label,
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8),
//           Container(
//             width: 50,
//             height: barHeight.clamp(0, double.infinity),
//             color: color,
//             alignment: Alignment.center,
//             child: Text(
//               score.toString(),
//               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Student {
//   final String name;
//   final int englishComprehension;
//   final int quantitativeAbility;
//   final int logicalAbility;
//   final int managerialBasketSimulation;
//   final int criticalReasoning;
//   final int cPlusPlusProgramming;
//
//   Student({
//     required this.name,
//     required this.englishComprehension,
//     required this.quantitativeAbility,
//     required this.logicalAbility,
//     required this.managerialBasketSimulation,
//     required this.criticalReasoning,
//     required this.cPlusPlusProgramming,
//   });
//
//   int getMaxScore() {
//     return <int>[
//       englishComprehension,
//       quantitativeAbility,
//       logicalAbility,
//       managerialBasketSimulation,
//       criticalReasoning,
//       cPlusPlusProgramming,
//     ].reduce((value, element) => value > element ? value : element);
//   }
// }
//  // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:tnpfinal/studentDisplay.dart';
// //
// // class MyAmcat extends StatefulWidget {
// //   const MyAmcat({Key? key});
// //
// //   @override
// //   State<MyAmcat> createState() => _MyAmcatState();
// // }
// //
// // class _MyAmcatState extends State<MyAmcat> {
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Amcat details'),
// //       ),
// //       body: Center(
// //         child: Text('Hello'),
// //       ),
// //     );
// //   }
// // }
