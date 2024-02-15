import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IlanDetaySayfasi extends StatelessWidget {
  final String sahip;
  final int ucret;
  final String depoTur;
  final String aciklama;
  final String image_url;

  // Ekledik

  IlanDetaySayfasi({
    required this.sahip,
    required this.ucret,
    required this.depoTur,
    required this.aciklama,
    required this.image_url, // Ekledik
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Detayları'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image_url,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              ('İlan Sahibi: $sahip'),
              //style: TextStyle(fontSize: 25, backgroundColor: Colors.black),
            ),
            Text('Ücret: $ucret'),
            Text('Depo Türü: $depoTur'),
            Text('Açıklama: $aciklama'),
            // Text(
            //   'image_url : ${image_url.replaceAll('image_url:', '').replaceAll('{', '').replaceAll('}', '')}',
            // ),

            // Image('image_url: $image_url'),

            // Image.network(
            //   // Uri.encodeFull(image_url
            //   //         .replaceAll('image_url:', '')
            //   //         .replaceAll('{', '')
            //   //         .replaceAll('}', ''))
            //   //     .toString(),
            //   image_url,
            //   width: double.infinity,
            //   height: 150,
            //   fit: BoxFit.cover,
            // ),

            ElevatedButton(
              onPressed: () {},
              child: Text('Kirala'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class IlanDetaySayfasi extends StatelessWidget {
//   final String sahip;
//   final int ucret;
//   final String depoTur;
//   final String aciklama;
//   final String? image_url; // Updated to be optional

//   IlanDetaySayfasi({
//     required this.sahip,
//     required this.ucret,
//     required this.depoTur,
//     required this.aciklama,
//     this.image_url, // Updated to be optional
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('İlan Detayları'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (image_url != null)
//               Image.network(
//                 image_url!,
//                 width: double.infinity,
//                 height: 150,
//                 fit: BoxFit.cover,
//               ),
//             SizedBox(height: 10),
//             Text('İlan Sahibi: $sahip'),
//             Text('Ücret: $ucret'),
//             Text('Depo Türü: $depoTur'),
//             Text('Açıklama: $aciklama'),
//           ],
//         ),
//       ),
//     );
//   }
// }


