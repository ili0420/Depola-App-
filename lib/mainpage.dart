// anasayfa.dart

import 'package:carousel_slider/carousel_slider.dart';
import 'package:depolamauygulamasi/Profile.dart';
import 'package:depolamauygulamasi/ilanver.dart';
import 'package:depolamauygulamasi/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depolamauygulamasi/ilan_card.dart';
import 'package:depolamauygulamasi/ilan_detay.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<String> homeList = [
    "Tüm Depolar",
    "Açık Hava Deposu",
    "Kapalı Hava Deposu",
    "Soğuk Hava Deposu",
    "Geleneksel Depolar",
    "Otomatik Depolar",
    "Antrepo"
  ];

  List<String> _carouselImages = [];

  Future<void> fetchCarouselImages() async {
    var snapshot = await FirebaseFirestore.instance.collection('images').get();
    _carouselImages =
        snapshot.docs.map((doc) => doc['image_url'] as String).toList();
  }

  @override
  void initState() {
    super.initState();
    fetchCarouselImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Color(0XFFF7F8Fa),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Aratmak İstediğiniz Depo",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0XFFF7F8Fa),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, top: 20),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CarouselSlider(
                      items: _carouselImages.map((imageUrl) {
                        return Image.network(
                          imageUrl,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.contain,
                        );
                      }).toList(),
                      options: CarouselOptions(
                          // CarouselSlider ayarları
                          ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        for (int i = 0; i < homeList.length; i++)
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 10),
                            decoration: BoxDecoration(
                              color: homeList[i] == "Tüm Depolar"
                                  ? const Color(0XFFFD725A)
                                  : const Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              homeList[i],
                              style: TextStyle(
                                fontSize: 16,
                                color: homeList[i] == "Tüm Depolar"
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('ilanlar')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }

                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }

                    return Column(
                      children: [
                        for (var ilan in snapshot.data!.docs)
                          IlanCard(
                            sahip: ilan['sahip'] ?? '',
                            ucret: (ilan['ucret']).toInt(),
                            depotur: ilan['depoTur'],
                            aciklama: ilan['aciklama'] ?? '',
                            // image_url:
                            //     ilan['depoResmi'] ?? 'varsayilan_resim_url',
                            ontap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IlanDetaySayfasi(
                                    sahip: ilan['sahip'] ?? '',
                                    ucret: ilan['ucret'].toInt(),
                                    depoTur: ilan['depoTur'],
                                    aciklama: ilan['aciklama'] ?? '',
                                    //
                                    image_url: ilan['image_url'].toString() ??
                                        'varsayilan_resim_url',
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: Color(0XFFFD725A),
        unselectedItemColor: const Color.fromARGB(255, 195, 192, 192),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add_outlined), label: "İlan Ver"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined), label: "Profil Bilgilerim"),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app), label: "Çıkış"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anasayfa(),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IlanVerSayfasi(),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );

              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
