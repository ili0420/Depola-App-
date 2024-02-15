import 'package:depolamauygulamasi/Profile.dart';
import 'package:depolamauygulamasi/depoadded.dart';
import 'package:depolamauygulamasi/firebase_options.dart';
import 'package:depolamauygulamasi/ilan_detay.dart';
import 'package:depolamauygulamasi/ilanver.dart';
import 'package:depolamauygulamasi/initialize/application_start.dart';
import 'package:depolamauygulamasi/loginpage.dart';
import 'package:depolamauygulamasi/mainpage.dart';
import 'package:depolamauygulamasi/product_card.dart';
import 'package:depolamauygulamasi/product_screen.dart';
import 'package:depolamauygulamasi/providers/ilan_provider.dart';
import 'package:depolamauygulamasi/providers/user_provider.dart';
import 'package:depolamauygulamasi/services/models/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await ApplicationStart
      .init(); // ApplicationStart class'ından initialize edildi
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        // Diğer provider'larınızı da buraya ekleyin
        // ChangeNotifierProvider(create: (_) => UserDataProvider()),
        ChangeNotifierProvider(create: (_) => IlanProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
