// ilan_card.dart

import 'package:flutter/material.dart';
import 'package:depolamauygulamasi/ilan_detay.dart';

class IlanCard extends StatelessWidget {
  final String sahip;
  final int ucret;
  final String depotur;
  final String aciklama;
  //final String image_url;
  final Function()? ontap; // Ekledik

  IlanCard({
    required this.sahip,
    required this.ucret,
    required this.depotur,
    required this.aciklama,
    //required this.image_url,
    this.ontap, // Ekledik
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap, // Ekledik
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.network(
            // image_url ?? 'varsayilan_resim_url',
            // width: double.infinity,
            //height: 150,
            //fit: BoxFit.cover,
            // ),
            SizedBox(height: 10),
            Text('Depo Türü: $depotur'),
            Text('İlan Sahibi: $sahip'),
            Text('Ücret: $ucret'),
          ],
        ),
      ),
    );
  }
}
