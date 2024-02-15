import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/mainpage.dart';
import 'package:depolamauygulamasi/services/models/user_model.dart';
import 'package:depolamauygulamasi/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage();

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController nameController;
  late TextEditingController addressController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  UserModel user =
      UserModel(name: '', address: '', email: '', password: '', phone: '');

  @override
  void initState() {
    super.initState();
    // TextEditingController'leri burada oluşturun
    nameController = TextEditingController();
    addressController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();

    // UserProvider üzerinden bilgileri çek
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    String enteredEmail = userProvider.email ?? '';
    String enteredPassword = userProvider.password ?? '';

    fetchUserData(enteredEmail, enteredPassword);
  }

  Future<void> fetchUserData(
      String enteredEmail, String enteredPassword) async {
    try {
      // Firestore'da kullanıcıyı bulma
      QuerySnapshot users = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: enteredEmail)
          .where('password', isEqualTo: enteredPassword)
          .get();

      // Eğer kullanıcı bulunduysa, Profil Sayfasına yönlendir
      if (users.docs.isNotEmpty) {
        setState(() {
          user = UserModel.fromMap(
              users.docs.first.data() as Map<String, dynamic>);
          nameController.text = user.name;
          addressController.text = user.address;
          emailController.text = user.email;
          passwordController.text = user.password;
          phoneController.text = user.phone;

          // UserProvider üzerinden bilgileri set et
          UserProvider userProvider =
              Provider.of<UserProvider>(context, listen: false);
          userProvider.setUserCredentials(user.email, user.password);
        });
      } else {
        print('Kullanıcı bulunamadı');
        // Kullanıcı bulunamadıysa işlemleri burada ele alın
      }
    } catch (e) {
      print('Hata: $e');
      // Hata durumları için işlemleri burada ele alın
    }
  }

  void _saveChanges() {
    // Kaydetme işlemleri
    print('Ad Soyad: ${nameController.text}');
    print('Adres: ${addressController.text}');
    print('E-posta: ${emailController.text}');
    print('Şifre: ${passwordController.text}');
    print('Telefon: ${phoneController.text}');

    // Geri bildirim
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Değişiklikler kaydedildi!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Bilgilerim'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Geri butonuna tıklanınca anasayfaya dön
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Anasayfa(),
              ),
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
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Adres',
                prefixIcon: Icon(Icons.maps_home_work),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-posta',
                prefixIcon: Icon(Icons.mail_outlined),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
                prefixIcon: Icon(Icons.lock_person),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Telefon',
                prefixIcon: Icon(Icons.phone_locked),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Kaydet'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
