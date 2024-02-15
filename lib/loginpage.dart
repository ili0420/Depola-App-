import 'package:depolamauygulamasi/Profile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/mainpage.dart';
import 'package:depolamauygulamasi/providers/user_provider.dart';
import 'package:depolamauygulamasi/services/models/user_model.dart';
import 'package:depolamauygulamasi/users.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late UserProvider userProvider; // Burada userProvider'ı tanımla

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    userProvider = Provider.of<UserProvider>(context,
        listen: false); // Burada userProvider'ı initialize et
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFff4500),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/depolama.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-posta adresinizi giriniz',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.person, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                ),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Şifrenizi giriniz',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.security, color: Colors.grey),
                  suffixIcon:
                      const Icon(Icons.visibility_off, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                ),
                style: TextStyle(color: Colors.white),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  String enteredEmail = emailController.text;
                  String enteredPassword = passwordController.text;
                  userProvider.setUserCredentials(
                      enteredEmail, enteredPassword);
                  try {
                    // Firestore'da kullanıcıyı bulma
                    QuerySnapshot users = await FirebaseFirestore.instance
                        .collection('users')
                        .where('email', isEqualTo: enteredEmail)
                        .where('password', isEqualTo: enteredPassword)
                        .get();

                    // Eğer kullanıcı bulunduysa, Profil Sayfasına yönlendir
                    if (users.docs.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Anasayfa(),
                        ),
                      );
                    } else {
                      print('Kullanıcı bulunamadı');
                      // Kullanıcı bulunamadıysa işlemleri burada ele alın
                    }
                  } catch (e) {
                    print('Hata: $e');
                    // Hata durumları için işlemleri burada ele alın
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Center(
                    child: const Text(
                      'GİRİŞ YAP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UsersPage(),
                    ),
                  );
                },
                child: Text(
                  ("Üye olmadınız mı ?"),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
