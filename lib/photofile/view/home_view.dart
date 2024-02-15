import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/photofile/image_file_picker/model/file_image_picker_model.dart';
import 'package:depolamauygulamasi/photofile/product/string_constants.dart';
import 'package:depolamauygulamasi/photofile/view/image_file_viewer.dart';
import 'package:depolamauygulamasi/photofile/image_file_picker/widget/file_upload_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartal/src/context_extension.dart';
import 'package:lottie/lottie.dart';

class PhotoHomeView extends StatefulWidget {
  const PhotoHomeView({Key? key}) : super(key: key);

  @override
  _PhotoHomeViewState createState() => _PhotoHomeViewState();
}

class _PhotoHomeViewState extends State<PhotoHomeView> {
  String? imagePath;
  List<String>? imagePaths;
  FilePickerResult? filePickerResults;

  void _updateItems(FilePickerNavigateModel model) async {
    setState(() {
      imagePath = model.imagePath;
      imagePaths = model.imagePaths;
      filePickerResults = model.filePickerResults;
    });

    // Görselleri Firebase Storage'a yükle ve Firestore'da sakla
    if (imagePaths != null && imagePaths!.isNotEmpty) {
      for (String imagePath in imagePaths!) {
        String imageUrl = await uploadImageToFirebaseStorage(imagePath);
        saveImageURLToFirestore(imageUrl);
      }
    }
  }

  Future<String> uploadImageToFirebaseStorage(String imagePath) async {
    File file = File(imagePath);
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    Reference storageReference =
        FirebaseStorage.instance.ref().child('images/$fileName');
    UploadTask uploadTask = storageReference.putFile(file);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    String imageUrl = await taskSnapshot.ref.getDownloadURL();
    return imageUrl;
  }

  Future<void> saveImageURLToFirestore(String imageUrl) async {
    await FirebaseFirestore.instance.collection('images').add({
      'imageUrl': imageUrl,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text(ProcjectStringConstants.fileInputTittleText),
            actions: [Icon(Icons.select_all)],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _fileUpload(),
              (imagePaths?.isNotEmpty ?? false) || (filePickerResults != null)
                  ? emptyAreaSizedBox(context)
                  : const SizedBox(),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _fileUpload() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: context.dynamicWidth(0.9),
          height: context.dynamicHeight(0.45),
          child: Lottie.asset(
            'assets/lottie/upload_file.json',
          ),
        ),
        SizedBox(
          height: context.dynamicHeight(0.05),
          child: FileUploadButton(
            onResult: (result) {
              _updateItems(result);
            },
          ),
        ),
      ],
    );
  }

  Widget emptyAreaSizedBox(BuildContext context) {
    return FileImageView(
      imagePaths: imagePaths,
      filePickerResults: filePickerResults,
    );
  }
}
