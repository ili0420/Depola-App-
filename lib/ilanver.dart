import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/photofile/view/home_view.dart';
import 'package:depolamauygulamasi/services/models/user_added.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class IlanVerSayfasi extends StatefulWidget {
  @override
  _IlanVerSayfasiState createState() => _IlanVerSayfasiState();
}

class _IlanVerSayfasiState extends State<IlanVerSayfasi> {
  TextEditingController _sahipController = TextEditingController();
  TextEditingController _ucretController = TextEditingController();
  TextEditingController _aciklamaController = TextEditingController();
  String? _depoTur;
  String? image_url;
  List<String>? imagePaths;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Ver'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _sahipController,
              decoration: InputDecoration(
                labelText: 'İlan Sahibi',
                prefixIcon: Icon(Icons.person_outline_sharp),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ucretController,
              decoration: InputDecoration(
                labelText: 'Ücret',
                prefixIcon: Icon(Icons.money),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            DropdownButtonFormField(
              value: _depoTur,
              items: [
                DropdownMenuItem(
                  child: Text('Geleneksel Depolar'),
                  value: 'Geleneksel Depolar',
                ),
                DropdownMenuItem(
                  child: Text('Açık Hava Deposu'),
                  value: 'Açık Hava Deposu',
                ),
                DropdownMenuItem(
                  child: Text('Kapalı Hava Deposu'),
                  value: 'Kapalı Hava Deposu',
                ),
                DropdownMenuItem(
                  child: Text('Soğuk Hava Deposu'),
                  value: 'Soğuk Hava Deposu',
                ),
                DropdownMenuItem(
                  child: Text('Otomatik Depolar'),
                  value: 'Otomatik Depolar',
                ),
                DropdownMenuItem(
                  child: Text('Antrepo'),
                  value: 'Antrepo',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _depoTur = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Depo Türü',
                prefixIcon: const Icon(Icons.storage),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _aciklamaController,
              decoration: InputDecoration(labelText: 'Depo Hakkında Açıklama'),
              maxLines: 3,
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoHomeView(),
                  ),
                );
              },
              icon: Icon(Icons.perm_media),
              label: Text('Depo Resmi Yükle'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Create a Map with the entered data
                Map<String, dynamic> depoMap = {
                  'sahip': _sahipController.text,
                  'ucret': int.parse(_ucretController.text),
                  'depoTur': _depoTur!,
                  'aciklama': _aciklamaController.text,
                };

                // Firestore'a veri eklemek için:
                DocumentReference documentReference = await FirebaseFirestore
                    .instance
                    .collection('ilanlar')
                    .add(depoMap);

                // Firestore'da eklenen ilanın ID'sini al
                String ilanId = documentReference.id;

                // İlanın fotoğrafını Firestore Storage'a yükle
                if (imagePaths != null && imagePaths!.isNotEmpty) {
                  for (String imagePath in imagePaths!) {
                    String imageUrl =
                        await uploadImageToFirebaseStorage(imagePath);
                    saveImageURLToFirestore(ilanId, imageUrl);
                  }
                }

                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoHomeView(),
                  ),
                );
              },
              child: Text('İlan Ver'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Future<void> saveImageURLToFirestore(String ilanId, String image_url) async {
  await FirebaseFirestore.instance
      .collection('ilanlar')
      .doc(ilanId)
      .collection('images')
      .add({
    'imageUrl': image_url,
  });
}

Future<String> uploadImageToFirebaseStorage(String imagePath) async {
  File file = File(imagePath);
  String fileName = DateTime.now().millisecondsSinceEpoch.toString();
  Reference storageReference =
      FirebaseStorage.instance.ref().child('ilanlar/$fileName');
  UploadTask uploadTask = storageReference.putFile(file);
  TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
  String image_url = await taskSnapshot.ref.getDownloadURL();
  return image_url;
}
