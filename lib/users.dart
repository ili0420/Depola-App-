import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/Profile.dart';
import 'package:depolamauygulamasi/loginpage.dart';
import 'package:depolamauygulamasi/services/models/user_model.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // TextEditingController tryPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Depola Hoşgeldiniz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Ad Soyad',
                prefixIcon: Icon(Icons.textsms),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Adres',
                prefixIcon: Icon(Icons.home),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-posta',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              //controller: tryPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Şifre Tekrar',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Telefon',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Kaydet'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveChanges() async {
    // Firestore bağlantısını al
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Kullanıcının girdiği bilgileri bir harita (map) olarak oluştur
    UserModel userModel = UserModel(
      name: nameController.text,
      address: addressController.text,
      email: emailController.text,
      password: passwordController.text,
      phone: phoneController.text,
    );

    try {
      // Firestore'a veriyi ekle
      await firestore.collection('users').add(userModel
          .toMap()); // UserModel'deki toMap fonksiyonunu kullanarak veriyi Firestore'a ekleyin

      // Geri bildirim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Değişiklikler kaydedildi!'),
        ),
      );
    } catch (e) {
      print('Hata oluştu: $e');
      // Hata durumunda geri bildirim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Veri eklenirken bir hata oluştu!'),
        ),
      );
    }
  }
}
