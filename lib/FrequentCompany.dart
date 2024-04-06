import 'package:flutter/material.dart';

class MyFrequentCompany extends StatefulWidget {
  const MyFrequentCompany({Key? key}) : super(key: key);

  @override
  State<MyFrequentCompany> createState() => _MyFrequentCompanyState();
}

class _MyFrequentCompanyState extends State<MyFrequentCompany> {
  List<String> productBasedCompanies = [
    'Company 1',
    'Company 2',
    // Add more product-based companies here...
  ];

  List<String> serviceBasedCompanies = [
    'Company A',
    'Company B',
    // Add more service-based companies here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frequent Company Infos'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF7F00FF),
              Color(0xFFE100FF),
            ],
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Product-Based Companies',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: List.generate(
                productBasedCompanies.length,
                    (index) => ListTile(
                  title: Text(productBasedCompanies[index]),
                  onTap: () {
                    // Navigate to a new state for the selected product-based company
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompanyDetails()),
                    );
                  },
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Service-Based Companies',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: List.generate(
                serviceBasedCompanies.length,
                    (index) => ListTile(
                  title: Text(serviceBasedCompanies[index]),
                  onTap: () {
                    // Navigate to a new state for the selected service-based company
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompanyDetails()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Details'),
      ),
      body: Center(
        child: Text('Company details will be shown here'),
      ),
    );
  }
}
