import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningModule {
  final String title;
  final String url;
  final String? videoUrl; // Nullable video URL

  LearningModule({required this.title, required this.url, this.videoUrl});
}

class LearningModulesPage extends StatelessWidget {
  final List<LearningModule> modules = [
    LearningModule(
      title: 'Module 1: DSA',
      url: 'https://takeuforward.org/strivers-a2z-dsa-course/strivers-a2z-dsa-course-sheet-2/',
      videoUrl: 'https://www.youtube.com/results?search_query=dsa+love+babbar+playlist',
    ),
    LearningModule(
      title: 'Module 2: CNS',
      url: 'https://www.javatpoint.com/computer-network-tutorial',
      videoUrl: 'https://www.youtube.com/watch?v=JFF2vJaN0Cw&list=PLxCzCOWd7aiGFBD2-2joCpWOLUrDLvVV_',
    ),
    LearningModule(
      title: 'Module 3: DBMS',
      url: 'https://www.geeksforgeeks.org/dbms/',
      videoUrl: 'https://www.youtube.com/watch?v=kBdlM6hNDAE&list=PLxCzCOWd7aiFAN6I8CuViBuCdJgiOkT2Y',
    ),
    LearningModule(
      title: 'Module 4: OOPS',
      url: 'https://www.geeksforgeeks.org/object-oriented-programming-in-cpp/',
      videoUrl: 'https://www.youtube.com/watch?v=nGJTWaaFdjc&list=PLISTUNloqsz0z9JJJke7g7PxRLvy6How9',
    ),
    LearningModule(
      title: 'Module 5: APTITUDE',
      url: 'https://www.indiabix.com/aptitude/questions-and-answers/',
      videoUrl: 'https://www.youtube.com/watch?v=AsYnEfOMs8I&list=PLrk5tgtnMN6SGlItiG3UVTGQq1aewWNdw',
    ),
    // Add more modules as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Modules'),
      ),
      body: ListView.builder(
        itemCount: modules.length,
        itemBuilder: (context, index) {
          final module = modules[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              onTap: () => _launchUrl(context, module.url),
              title: Text(
                module.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: module.videoUrl != null
                  ? GestureDetector(
                onTap: () => _launchUrl(context, module.videoUrl!),
                child: Row(
                  children: [
                    Icon(Icons.play_circle_filled, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Watch Video'),
                  ],
                ),
              )
                  : null,
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchUrl(BuildContext context, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Could not launch $url'),
      ));
    }
  }
}