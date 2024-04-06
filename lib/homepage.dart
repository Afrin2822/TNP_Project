import 'package:flutter/material.dart';
import "uploadpdf.dart";
import "viewpdf.dart";
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
          ), // Container
          RaisedButton(
            color: Colors.red,
            child: Text(
                'Upload PDFs'
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UploadPDF()));
            },
          ), // Rassedlutton
          Sizedbox(
            height: 20,
          ), // Sizedba
          RaisedButton(
            color: Colors.blue,
            child: Text(
                'View PDFs'
            ),
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> loadPDF()));
            },
          ),
        ],
      ),
    );
  }

  RaisedButton({required MaterialColor color, required Text child, required Null Function() onPressed}) {}

  Sizedbox({required int height}) {}

  UploadPDF() {}

  loadPDF() {}
}

