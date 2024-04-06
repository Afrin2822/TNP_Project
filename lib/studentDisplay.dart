import 'package:flutter/material.dart';
import 'package:tnpfinal/Amcat.dart';

class MyStudent extends StatefulWidget {
  const MyStudent({Key? key});

  @override
  State<MyStudent> createState() => _MyStudentState();
}

class _MyStudentState extends State<MyStudent> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Profile'),
            Row(
              children: [
                PopupMenuButton<String>(
                  onSelected: (String value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Name',
                      child: Text('Name'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Div',
                      child: Text('Div'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Class',
                      child: Text('Class'),
                    ),
                    PopupMenuItem<String>(
                      value: 'AMCAT',
                      child: Text('AMCAT'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Update Profile',
                      child: Text('Update Profile'),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _showOptions(context);
                  },
                  child: Text('Options'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: _selectedOption != null
            ? Text('Selected Option: $_selectedOption')
            : SizedBox(),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedOption = 'Name';
                  Navigator.pop(context);
                });
              },
              child: Text('Name'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedOption = 'Div';
                  Navigator.pop(context);
                });
              },
              child: Text('Div'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedOption = 'Class';
                  Navigator.pop(context);
                });
              },
              child: Text('Class'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedOption = 'AMCAT';
                  Navigator.pop(context);
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAmcat()),);
              },
              child: Text('AMCAT'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedOption = 'Update Profile';
                  Navigator.pop(context);
                });
              },
              child: Text('Update Profile'),
            ),
          ],
        );
      },
    );
  }
}
