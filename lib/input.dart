import 'package:flutter/material.dart';
import 'package:tnpfinal/myPdf.dart';

class MyInput extends StatefulWidget {
  const MyInput({Key? key}) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  final _formKey = GlobalKey<FormState>();

  // Define controllers for text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _rollNumberController = TextEditingController();
  final TextEditingController _prnNumberController = TextEditingController();
  final TextEditingController _registrationIdController = TextEditingController();
  final TextEditingController _yearOfPassingController = TextEditingController();
  final TextEditingController _diplomaDetailsController = TextEditingController();
  final TextEditingController _startingCollegeYearController = TextEditingController();
  final TextEditingController _sem1SgpaController = TextEditingController();
  final TextEditingController _sem2CgpaController = TextEditingController();
  final TextEditingController _sem3SgpaController = TextEditingController();
  final TextEditingController _sem4CgpaController = TextEditingController();
  final TextEditingController _backlogsController = TextEditingController();
  final TextEditingController _aadharNumberController = TextEditingController();
  final TextEditingController _amcatLogicalScoreController = TextEditingController();
  final TextEditingController _amcatQuantitativeScoreController = TextEditingController();
  final TextEditingController _amcatAutomataScoreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please fill in the student details:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Student Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Mobile Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Date of Birth';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _branchController,
                decoration: InputDecoration(
                  labelText: 'Branch',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Branch';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _rollNumberController,
                decoration: InputDecoration(
                  labelText: 'Roll Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Roll Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _prnNumberController,
                decoration: InputDecoration(
                  labelText: 'PRN Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter PRN Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _registrationIdController,
                decoration: InputDecoration(
                  labelText: 'Registration ID',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Registration ID';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _yearOfPassingController,
                decoration: InputDecoration(
                  labelText: 'Year of Passing',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Year of Passing';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _diplomaDetailsController,
                decoration: InputDecoration(
                  labelText: 'Diploma Details',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Diploma Details';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _startingCollegeYearController,
                decoration: InputDecoration(
                  labelText: 'Starting College Year',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Starting College Year';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _sem1SgpaController,
                decoration: InputDecoration(
                  labelText: 'Sem 1 SGPA',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Sem 1 SGPA';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _sem2CgpaController,
                decoration: InputDecoration(
                  labelText: 'Sem 2 CGPA',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Sem 2 CGPA';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _sem3SgpaController,
                decoration: InputDecoration(
                  labelText: 'Sem 3 SGPA',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Sem 3 SGPA';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _sem4CgpaController,
                decoration: InputDecoration(
                  labelText: 'Sem 4 CGPA',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Sem 4 CGPA';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _backlogsController,
                decoration: InputDecoration(
                  labelText: 'Number of Backlogs',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Number of Backlogs';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _aadharNumberController,
                decoration: InputDecoration(
                  labelText: 'Aadhar Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Aadhar Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _amcatLogicalScoreController,
                decoration: InputDecoration(
                  labelText: 'AMCAT Logical Ability Score',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter AMCAT Logical Ability Score';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _amcatQuantitativeScoreController,
                decoration: InputDecoration(
                  labelText: 'AMCAT Quantitative Ability Score',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter AMCAT Quantitative Ability Score';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _amcatAutomataScoreController,
                decoration: InputDecoration(
                  labelText: 'AMCAT Automata Score',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter AMCAT Automata Score';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Validate form
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with your logic
                    // For now, let's just print the values
                    print('Name: ${_nameController.text}');
                    print('Mobile Number: ${_mobileController.text}');
                    print('Date of Birth: ${_dobController.text}');
                    print('Address: ${_addressController.text}');
                    print('Branch: ${_branchController.text}');
                    print('Roll Number: ${_rollNumberController.text}');
                    print('PRN Number: ${_prnNumberController.text}');
                    print('Registration ID: ${_registrationIdController.text}');
                    print('Year of Passing: ${_yearOfPassingController.text}');
                    print('Diploma Details: ${_diplomaDetailsController.text}');
                    print('Starting College Year: ${_startingCollegeYearController.text}');
                    print('Sem 1 SGPA: ${_sem1SgpaController.text}');
                    print('Sem 2 CGPA: ${_sem2CgpaController.text}');
                    print('Sem 3 SGPA: ${_sem3SgpaController.text}');
                    print('Sem 4 CGPA: ${_sem4CgpaController.text}');
                    print('Number of Backlogs: ${_backlogsController.text}');
                    print('Aadhar Number: ${_aadharNumberController.text}');
                    print('AMCAT Logical Ability Score: ${_amcatLogicalScoreController.text}');
                    print('AMCAT Quantitative Ability Score: ${_amcatQuantitativeScoreController.text}');
                    print('AMCAT Automata Score: ${_amcatAutomataScoreController.text}');
                  }
                },
                child: Text('Submit'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to MyPdf screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyPdf()),
                  );
                },
                child: Text('Submit PDF here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}