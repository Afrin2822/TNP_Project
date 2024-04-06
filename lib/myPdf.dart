import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class MyPdf extends StatefulWidget {
  const MyPdf({Key? key}) : super(key: key);

  @override
  State<MyPdf> createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  Map<String, PlatformFile?> _pdfFiles = {
    '10th marksheet': null,
    '12th marksheet': null,
    'sem1 result': null,
    'sem2 result': null,
    'sem3 result': null,
    'sem4 result': null,
    'resume': null,
    'amcat report': null,
    'aadhar card': null,
  };

  Future<void> _pickPDF(String section) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );

    if (result != null) {
      setState(() {
        _pdfFiles[section] = result.files.first;
      });
    }
  }

  Future<void> _uploadPDFs() async {
    for (var entry in _pdfFiles.entries) {
      var file = entry.value;
      if (file != null) {
        List<int> bytes = await file.bytes!;
        String base64file = base64Encode(bytes);

        // Replace 'https://your-upload-url.com' with your actual upload endpoint
        Uri uploadUri = Uri.parse('https://your-upload-url.com');

        // Make a POST request with the file data
        await http.post(
          uploadUri,
          body: {
            'file': base64file,
            'filename': file.name,
          },
        );

        print('Uploaded PDF (${entry.key}): ${file.name}');
      } else {
        print('No PDF selected for ${entry.key}');
      }
    }
  }

  Widget _buildSection(String section, PlatformFile? file) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => _pickPDF(section),
            child: Text('Select PDF'),
          ),
          if (file != null) ...[
            SizedBox(height: 8),
            Text('Selected file: ${file.name}'),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload PDFs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _pdfFiles.entries
              .map((entry) => _buildSection(entry.key, entry.value))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _uploadPDFs,
        tooltip: 'Upload PDFs',
        child: Icon(Icons.cloud_upload),
      ),
    );
  }
}