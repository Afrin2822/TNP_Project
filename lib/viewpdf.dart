import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:flutter_full_pdf_viewer_null_safe/flutter_full_pdf_viewer_null_safe.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
// import 'package:flutter_full_pdf_viewer_null_safe/full_pdf_viewer_scaffold.dart';
class loadpdf extends StatefulWidget {
  @override
  _loadPdfState createState() => _loadPdfState();
}
class _loadPdfState extends State<loadpdf>{
  firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

  Future<void> listExample() async {
    firebase_storage.ListResult result =
    await firebase_storage.FirebaseStorage.instance.ref().child('files').listAll();

    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
  }
  Future<void> downloadURLExample() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref('files/Company_details_final.pdf')
        .getDownloadURL();
    print(downloadURL);
    // PDFDocument doc = await PDFDocument.fromURL(downloadURL);
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF(doc)));  //Notice the Push Route once this is done.
  }


@override
  Widget build(BuildContext context){
    return Container();
  }
}