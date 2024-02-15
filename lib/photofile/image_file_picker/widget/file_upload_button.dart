import 'package:depolamauygulamasi/photofile/image_file_picker/model/file_image_picker_model.dart';
import 'package:depolamauygulamasi/photofile/image_file_picker/view/image_file_pickerview.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

class FileUploadButton extends StatelessWidget {
  const FileUploadButton({Key? key, required this.onResult}) : super(key: key);
  final void Function(FilePickerNavigateModel result) onResult;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
        onPressed: () async {
          final result = await FilePickerSheet(context).show();
          if (result != null) {
            onResult(result);
          }
        },
        child: Text(
          ("Yükle"),
          style: TextStyle(color: Colors.white),
        ));
  }
}
