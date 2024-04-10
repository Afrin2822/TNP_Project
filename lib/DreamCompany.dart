import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tnpfinal/pdf_view.dart';

// Model representing a dream company
class DreamCompany {
  final String name;
  final String details;

  DreamCompany({required this.name, required this.details});
}

class MyDreamCompany extends StatefulWidget {
  const MyDreamCompany({Key? key}) : super(key: key);

  @override
  State<MyDreamCompany> createState() => _MyDreamCompanyState();
}

class _MyDreamCompanyState extends State<MyDreamCompany> {
  // List of dream companies with details
  List<DreamCompany> dreamCompanies = [
    DreamCompany(name: 'Dream Company 1', details: 'Details of Dream Company 1'),
    DreamCompany(name: 'Dream Company 2', details: 'Details of Dream Company 2'),
    DreamCompany(name: 'Dream Company 3', details: 'Details of Dream Company 3'),
    DreamCompany(name: 'Dream Company 4', details: 'Details of Dream Company 4'),
    DreamCompany(name: 'Dream Company 5', details: 'Details of Dream Company 5'),
    DreamCompany(name: 'Dream Company 6', details: 'Details of Dream Company 6'),
    DreamCompany(name: 'Dream Company 7', details: 'Details of Dream Company 7'),
    DreamCompany(name: 'Dream Company 8', details: 'Details of Dream Company 8'),
    DreamCompany(name: 'Dream Company 9', details: 'Details of Dream Company 9'),
    DreamCompany(name: 'Dream Company 10', details: 'Details of Dream Company 10'),
    DreamCompany(name: 'Dream Company 11', details: 'Details of Dream Company 11'),
    DreamCompany(name: 'Dream Company 12', details: 'Details of Dream Company 12'),
    DreamCompany(name: 'Dream Company 13', details: 'Details of Dream Company 13'),
    DreamCompany(name: 'Dream Company 14', details: 'Details of Dream Company 14'),
    DreamCompany(name: 'Dream Company 15', details: 'Details of Dream Company 15'),
    DreamCompany(name: 'Dream Company 16', details: 'Details of Dream Company 16'),
    DreamCompany(name: 'Dream Company 17', details: 'Details of Dream Company 17'),
    DreamCompany(name: 'Dream Company 18', details: 'Details of Dream Company 18'),
    DreamCompany(name: 'Dream Company 19', details: 'Details of Dream Company 19'),
    DreamCompany(name: 'Dream Company 20', details: 'Details of Dream Company 20'),
    // Add details for other dream companies
  ];

  void abc() async {
    var collection = FirebaseFirestore.instance.collection('companies');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      var name = data['company_name'];
      var phone = data['URL'];
      print(name);
      print(phone);
    }
  }

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
                Color(0xFFF3F4F6),
                Color(0xFFF8F6F8),
              ],
            ),
          ),
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('companies').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: ( context,  index) {
                      return ListTile(

                        title: Text(snapshot.data!.docs[index]['company_name']),
                        onTap: () {
                          // Navigate to a new state for the selected dream company
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => CompanyDetails(dreamCompanies[index])),
                          // );

                          Navigator.push(context, MaterialPageRoute(builder: (context) => PdfView_Custom(url: snapshot.data!.docs[index]['URL'],)));

                        },
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.hasError.toString()));
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Center(
                child: Text("Sahil"),
              );
            },
          )

        // ListView.builder(
        //   itemCount: dreamCompanies.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text(dreamCompanies[index].name),
        //       onTap: () {
        //         // Navigate to a new state for the selected dream company
        //         // Navigator.push(
        //         //   context,
        //         //   MaterialPageRoute(builder: (context) => CompanyDetails(dreamCompanies[index])),
        //         // );
        //         abc();
        //       },
        //     );
        //   },
        // ),
      ),
    );
  }
}

class CompanyDetails extends StatelessWidget {
  final DreamCompany company;

  CompanyDetails(this.company);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add company logo here
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Image.network(
                'https://example.com/logo.png', // Replace with actual logo URL
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              company.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              company.details,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Heading 1:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Info 1',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            // Add more headings and info as needed
          ],
        ),
      ),
    );
  }
}



