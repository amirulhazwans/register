import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:form_two/Third.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Uint8List? imageBytes;

  Future<void> pickImage() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      final bytes = result.files.single.bytes;
      setState(() {
        imageBytes = bytes;
      });
    }
  }

  void submitImage() {
      if(imageBytes != null){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThirdPage()), // Replace 'ThirdPage' with the actual class name of your third page.
        );
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload a receipt payment'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageBytes != null)
            Image.memory(
              imageBytes!,
              height: 300,
              width: 200,
            ),
          Center(
            child: ElevatedButton(
              onPressed: pickImage,
              child: const Text('Pick an Image'),
            ),
          ),
          if (imageBytes != null)
            Center(
              child: ElevatedButton(
                onPressed: submitImage,
                child: const Text('Submit'),
              ),
            ),
        ],
      ),
    );
  }
}
