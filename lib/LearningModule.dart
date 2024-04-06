// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tnpfinal/studentDisplay.dart';

class MyLearningModule extends StatefulWidget {
  const MyLearningModule({Key? key});

  @override
  State<MyLearningModule> createState() => _MyLearningModuleState();
}

class _MyLearningModuleState extends State<MyLearningModule> {
  List<String> learningModules = [
    'Learning Module 1',
    'Learning Module 2',
    'Learning Module 3',
    'Learning Module 4',
    'Learning Module 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dream Company Infos'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF375DE8),
              Color(0xFFE100FF),
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: learningModules.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(learningModules[index]),
              onTap: () {
                // Navigate to a new state for the selected dream company
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningModuleDetails(learningModules[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}


class LearningModuleDetails extends StatelessWidget {
  final String learningModuleName;

  LearningModuleDetails(this.learningModuleName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Module Details'),
      ),
      body: Center(
        child: Text('Details of $learningModuleName will be shown here'),
      ),
    );
  }
}