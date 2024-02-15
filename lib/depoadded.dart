import 'package:depolamauygulamasi/Profile.dart';
import 'package:depolamauygulamasi/mainpage.dart';
import 'package:flutter/material.dart';

class ProvinceDistrictAdded extends StatefulWidget {
  const ProvinceDistrictAdded({super.key});

  @override
  State<ProvinceDistrictAdded> createState() =>
      _ProvinceDistrictDropdownState();
}

class _ProvinceDistrictDropdownState extends State<ProvinceDistrictAdded> {
  List<CityModel> cities = [
    CityModel(cityId: '01', cityName: 'Adana'),
    CityModel(cityId: '02', cityName: 'Adıyaman'),
    CityModel(cityId: '03', cityName: 'Afyonkarahisar'),
    CityModel(cityId: '04', cityName: 'Ağrı'),
    CityModel(cityId: '05', cityName: 'Amasya'),
    CityModel(cityId: '06', cityName: 'Ankara'),
    CityModel(cityId: '07', cityName: 'Antalya'),
    CityModel(cityId: '08', cityName: 'Artvin'),
    CityModel(cityId: '09', cityName: 'Aydın'),
    CityModel(cityId: '10', cityName: 'Balıkesir'),
    CityModel(cityId: '11', cityName: 'Bilecik'),
    CityModel(cityId: '12', cityName: 'Bingöl'),
    CityModel(cityId: '13', cityName: 'Bitlis'),
    CityModel(cityId: '14', cityName: 'Bolu'),
    CityModel(cityId: '15', cityName: 'Burdur'),
    CityModel(cityId: '16', cityName: 'Bursa'),
    CityModel(cityId: '17', cityName: 'Çanakkale'),
    CityModel(cityId: '18', cityName: 'Çankırı'),
    CityModel(cityId: '19', cityName: 'Çorum'),
    CityModel(cityId: '20', cityName: 'Denizli'),
    CityModel(cityId: '21', cityName: 'Diyarbakır'),
    CityModel(cityId: '22', cityName: 'Edirne'),
    CityModel(cityId: '23', cityName: 'Elazığ'),
    CityModel(cityId: '24', cityName: 'Erzincan'),
    CityModel(cityId: '25', cityName: 'Erzurum'),
    CityModel(cityId: '26', cityName: 'Eskişehir'),
    CityModel(cityId: '27', cityName: 'Gaziantep'),
    CityModel(cityId: '28', cityName: 'Giresun'),
    CityModel(cityId: '29', cityName: 'Gümüşhane'),
    CityModel(cityId: '30', cityName: 'Hakkâri'),
    CityModel(cityId: '31', cityName: 'Hatay'),
    CityModel(cityId: '32', cityName: 'Isparta'),
    CityModel(cityId: '33', cityName: 'Mersin'),
    CityModel(cityId: '34', cityName: 'İstanbul'),
    CityModel(cityId: '35', cityName: 'İzmir'),
    CityModel(cityId: '36', cityName: 'Kars'),
    CityModel(cityId: '37', cityName: 'Kastamonu'),
    CityModel(cityId: '38', cityName: 'Kayseri'),
    CityModel(cityId: '39', cityName: 'Kırklareli'),
    CityModel(cityId: '40', cityName: 'Kırşehir'),
    CityModel(cityId: '41', cityName: 'Kocaeli'),
    CityModel(cityId: '42', cityName: 'Konya'),
    CityModel(cityId: '43', cityName: 'Kütahya'),
    CityModel(cityId: '44', cityName: 'Malatya'),
    CityModel(cityId: '45', cityName: 'Manisa'),
    CityModel(cityId: '46', cityName: 'Kahramanmaraş'),
    CityModel(cityId: '47', cityName: 'Mardin'),
    CityModel(cityId: '48', cityName: 'Muğla'),
    CityModel(cityId: '49', cityName: 'Muş'),
    CityModel(cityId: '50', cityName: 'Nevşehir'),
    CityModel(cityId: '51', cityName: 'Niğde'),
    CityModel(cityId: '52', cityName: 'Ordu'),
    CityModel(cityId: '53', cityName: 'Rize'),
    CityModel(cityId: '54', cityName: 'Sakarya'),
    CityModel(cityId: '55', cityName: 'Samsun'),
    CityModel(cityId: '56', cityName: 'Siirt'),
    CityModel(cityId: '57', cityName: 'Sinop'),
    CityModel(cityId: '58', cityName: 'Sivas'),
    CityModel(cityId: '59', cityName: 'Tekirdağ'),
    CityModel(cityId: '60', cityName: 'Tokat'),
    CityModel(cityId: '61', cityName: 'Trabzon'),
    CityModel(cityId: '62', cityName: 'Tunceli'),
    CityModel(cityId: '63', cityName: 'Şanlıurfa'),
    CityModel(cityId: '64', cityName: 'Uşak'),
    CityModel(cityId: '65', cityName: 'Van'),
    CityModel(cityId: '66', cityName: 'Yozgat'),
    CityModel(cityId: '67', cityName: 'Zonguldak'),
    CityModel(cityId: '68', cityName: 'Aksaray'),
    CityModel(cityId: '69', cityName: 'Bayburt'),
    CityModel(cityId: '70', cityName: 'Karaman'),
    CityModel(cityId: '71', cityName: 'Kırıkkale'),
    CityModel(cityId: '72', cityName: 'Batman'),
    CityModel(cityId: '73', cityName: 'Şırnak'),
    CityModel(cityId: '74', cityName: 'Bartın'),
    CityModel(cityId: '75', cityName: 'Ardahan'),
    CityModel(cityId: '76', cityName: 'Iğdır'),
    CityModel(cityId: '77', cityName: 'Yalova'),
    CityModel(cityId: '78', cityName: 'Karabük'),
    CityModel(cityId: '79', cityName: 'Kilis'),
    CityModel(cityId: '80', cityName: 'Osmaniye'),
    CityModel(cityId: '81', cityName: 'Düzce'),
  ];

  List<DistrictModel> districts = [
    DistrictModel(districtId: '01', cityId: '02', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '02', districtName: 'Besni'),
    DistrictModel(districtId: '03', cityId: '02', districtName: 'Çelikhan'),
    DistrictModel(districtId: '04', cityId: '02', districtName: 'Gerger'),
    DistrictModel(districtId: '05', cityId: '02', districtName: 'Gölbaşı'),
    DistrictModel(districtId: '06', cityId: '02', districtName: 'Kahta'),
    DistrictModel(districtId: '07', cityId: '02', districtName: 'Samsat'),
    DistrictModel(districtId: '08', cityId: '02', districtName: 'Sincik'),
    DistrictModel(districtId: '09', cityId: '02', districtName: 'Tut'),
    DistrictModel(districtId: '01', cityId: '03', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '03', districtName: 'Başmakçı'),
    DistrictModel(districtId: '03', cityId: '03', districtName: 'Bayat'),
    DistrictModel(districtId: '04', cityId: '03', districtName: 'Bolvadin'),
    DistrictModel(districtId: '05', cityId: '03', districtName: 'Çay'),
    DistrictModel(districtId: '06', cityId: '03', districtName: 'Çobanlar'),
    DistrictModel(districtId: '07', cityId: '03', districtName: 'Dazkırı'),
    DistrictModel(districtId: '08', cityId: '03', districtName: 'Dinar'),
    DistrictModel(districtId: '09', cityId: '03', districtName: 'Emirdağ'),
    DistrictModel(districtId: '10', cityId: '03', districtName: 'Evciler'),
    DistrictModel(districtId: '11', cityId: '03', districtName: 'Hocalar'),
    DistrictModel(districtId: '12', cityId: '03', districtName: 'İhsaniye'),
    DistrictModel(districtId: '13', cityId: '03', districtName: 'İscehisar'),
    DistrictModel(districtId: '14', cityId: '03', districtName: 'Kızılören'),
    DistrictModel(districtId: '15', cityId: '03', districtName: 'Sandıklı'),
    DistrictModel(districtId: '16', cityId: '03', districtName: 'Sinanpaşa'),
    DistrictModel(districtId: '17', cityId: '03', districtName: 'Sultandağı'),
    DistrictModel(districtId: '18', cityId: '03', districtName: 'Şuhut'),
    DistrictModel(districtId: '01', cityId: '04', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '04', districtName: 'Diyadin'),
    DistrictModel(districtId: '03', cityId: '04', districtName: 'Doğubayazıt'),
    DistrictModel(districtId: '04', cityId: '04', districtName: 'Eleşkirt'),
    DistrictModel(districtId: '05', cityId: '04', districtName: 'Hamur'),
    DistrictModel(districtId: '06', cityId: '04', districtName: 'Patnos'),
    DistrictModel(districtId: '07', cityId: '04', districtName: 'Taşlıçay'),
    DistrictModel(districtId: '08', cityId: '04', districtName: 'Tutak'),
    DistrictModel(districtId: '01', cityId: '05', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '05', districtName: 'Göynücek'),
    DistrictModel(districtId: '03', cityId: '05', districtName: 'Gümüşhacıköy'),
    DistrictModel(districtId: '04', cityId: '05', districtName: 'Hamamözü'),
    DistrictModel(districtId: '05', cityId: '05', districtName: 'Merzifon'),
    DistrictModel(districtId: '06', cityId: '05', districtName: 'Suluova'),
    DistrictModel(districtId: '07', cityId: '05', districtName: 'Taşova'),
    DistrictModel(districtId: '01', cityId: '06', districtName: 'Altındağ'),
    DistrictModel(districtId: '02', cityId: '06', districtName: 'Ayaş'),
    DistrictModel(districtId: '03', cityId: '06', districtName: 'Bala'),
    DistrictModel(districtId: '04', cityId: '06', districtName: 'Beypazarı'),
    DistrictModel(districtId: '05', cityId: '06', districtName: 'Çamlıdere'),
    DistrictModel(districtId: '06', cityId: '06', districtName: 'Çankaya'),
    DistrictModel(districtId: '07', cityId: '06', districtName: 'Çubuk'),
    DistrictModel(districtId: '08', cityId: '06', districtName: 'Elmadağ'),
    DistrictModel(districtId: '09', cityId: '06', districtName: 'Güdül'),
    DistrictModel(districtId: '10', cityId: '06', districtName: 'Haymana'),
    DistrictModel(districtId: '11', cityId: '06', districtName: 'Kalecik'),
    DistrictModel(districtId: '12', cityId: '06', districtName: 'Kızılcahamam'),
    DistrictModel(districtId: '13', cityId: '06', districtName: 'Nallıhan'),
    DistrictModel(districtId: '14', cityId: '06', districtName: 'Polatlı'),
    DistrictModel(districtId: '15', cityId: '06', districtName: 'Pursaklar'),
    DistrictModel(districtId: '16', cityId: '06', districtName: 'Sincan'),
    DistrictModel(
        districtId: '17', cityId: '06', districtName: 'Şereflikoçhisar'),
    DistrictModel(districtId: '01', cityId: '07', districtName: 'Akseki'),
    DistrictModel(districtId: '02', cityId: '07', districtName: 'Aksu'),
    DistrictModel(districtId: '03', cityId: '07', districtName: 'Alanya'),
    DistrictModel(districtId: '04', cityId: '07', districtName: 'Demre'),
    DistrictModel(districtId: '05', cityId: '07', districtName: 'Döşemealtı'),
    DistrictModel(districtId: '06', cityId: '07', districtName: 'Elmalı'),
    DistrictModel(districtId: '07', cityId: '07', districtName: 'Finike'),
    DistrictModel(districtId: '08', cityId: '07', districtName: 'Gazipaşa'),
    DistrictModel(districtId: '09', cityId: '07', districtName: 'Gündoğmuş'),
    DistrictModel(districtId: '10', cityId: '07', districtName: 'İbradı'),
    DistrictModel(districtId: '11', cityId: '07', districtName: 'Kaş'),
    DistrictModel(districtId: '12', cityId: '07', districtName: 'Kemer'),
    DistrictModel(districtId: '13', cityId: '07', districtName: 'Kepez'),
    DistrictModel(districtId: '14', cityId: '07', districtName: 'Konyaaltı'),
    DistrictModel(districtId: '15', cityId: '07', districtName: 'Korkuteli'),
    DistrictModel(districtId: '16', cityId: '07', districtName: 'Kumluca'),
    DistrictModel(districtId: '17', cityId: '07', districtName: 'Manavgat'),
    DistrictModel(districtId: '18', cityId: '07', districtName: 'Muratpaşa'),
    DistrictModel(districtId: '19', cityId: '07', districtName: 'Serik'),
    DistrictModel(districtId: '01', cityId: '08', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '08', districtName: 'Ardanuç'),
    DistrictModel(districtId: '03', cityId: '08', districtName: 'Arhavi'),
    DistrictModel(districtId: '04', cityId: '08', districtName: 'Borçka'),
    DistrictModel(districtId: '05', cityId: '08', districtName: 'Hopa'),
    DistrictModel(districtId: '06', cityId: '08', districtName: 'Kemalpaşa'),
    DistrictModel(districtId: '07', cityId: '08', districtName: 'Murgul'),
    DistrictModel(districtId: '08', cityId: '08', districtName: 'Şavşat'),
    DistrictModel(districtId: '09', cityId: '08', districtName: 'Yusufeli'),
    DistrictModel(
        districtId: '01', cityId: '09', districtName: 'Efeler(Merkez)'),
    DistrictModel(districtId: '02', cityId: '09', districtName: 'Bozdoğan'),
    DistrictModel(districtId: '03', cityId: '09', districtName: 'Buharkent'),
    DistrictModel(districtId: '04', cityId: '09', districtName: 'Çine'),
    DistrictModel(districtId: '05', cityId: '09', districtName: 'Didim'),
    DistrictModel(districtId: '06', cityId: '09', districtName: 'Germencik'),
    DistrictModel(districtId: '07', cityId: '09', districtName: 'İncirliova'),
    DistrictModel(districtId: '08', cityId: '09', districtName: 'Karacasu'),
    DistrictModel(districtId: '09', cityId: '09', districtName: 'Karpuzlu'),
    DistrictModel(districtId: '10', cityId: '09', districtName: 'Koçarlı'),
    DistrictModel(districtId: '11', cityId: '09', districtName: 'Köşk'),
    DistrictModel(districtId: '12', cityId: '09', districtName: 'Kuşadası'),
    DistrictModel(districtId: '13', cityId: '09', districtName: 'Kuyucak'),
    DistrictModel(districtId: '14', cityId: '09', districtName: 'Nazilli'),
    DistrictModel(districtId: '15', cityId: '09', districtName: 'Söke'),
    DistrictModel(districtId: '16', cityId: '09', districtName: 'Sultanhisar'),
    DistrictModel(districtId: '17', cityId: '09', districtName: 'Yenipazar'),
    DistrictModel(districtId: '01', cityId: '10', districtName: 'Altıeylül'),
    DistrictModel(districtId: '02', cityId: '10', districtName: 'Ayvalık'),
    DistrictModel(districtId: '03', cityId: '10', districtName: 'Balya'),
    DistrictModel(districtId: '04', cityId: '10', districtName: 'Bandırma'),
    DistrictModel(districtId: '05', cityId: '10', districtName: 'Bigadiç'),
    DistrictModel(districtId: '06', cityId: '10', districtName: 'Burhaniye'),
    DistrictModel(districtId: '07', cityId: '10', districtName: 'Dursunbey'),
    DistrictModel(districtId: '08', cityId: '10', districtName: 'Edremit'),
    DistrictModel(districtId: '09', cityId: '10', districtName: 'Erdek'),
    DistrictModel(districtId: '10', cityId: '10', districtName: 'Gömeç'),
    DistrictModel(districtId: '11', cityId: '10', districtName: 'Gönen'),
    DistrictModel(districtId: '12', cityId: '10', districtName: 'Havran'),
    DistrictModel(districtId: '13', cityId: '10', districtName: 'İvrindi'),
    DistrictModel(districtId: '14', cityId: '10', districtName: 'Karesi'),
    DistrictModel(districtId: '15', cityId: '10', districtName: 'Kepsut'),
    DistrictModel(districtId: '16', cityId: '10', districtName: 'Manyas'),
    DistrictModel(districtId: '17', cityId: '10', districtName: 'Marmara'),
    DistrictModel(districtId: '18', cityId: '10', districtName: 'Savaştepe'),
    DistrictModel(districtId: '19', cityId: '10', districtName: 'Sıngırdı'),
    DistrictModel(districtId: '20', cityId: '10', districtName: 'Susurluk'),
    DistrictModel(districtId: '01', cityId: '11', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '11', districtName: 'Bozüyük'),
    DistrictModel(districtId: '03', cityId: '11', districtName: 'Gölpazarı'),
    DistrictModel(districtId: '04', cityId: '11', districtName: 'İnhisar'),
    DistrictModel(districtId: '05', cityId: '11', districtName: 'Osmaneli'),
    DistrictModel(districtId: '06', cityId: '11', districtName: 'Pazaryeri'),
    DistrictModel(districtId: '07', cityId: '11', districtName: 'Söğüt'),
    DistrictModel(districtId: '08', cityId: '11', districtName: 'Yenipazar'),
    DistrictModel(districtId: '01', cityId: '12', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '12', districtName: 'Adaklı'),
    DistrictModel(districtId: '03', cityId: '12', districtName: 'Genç'),
    DistrictModel(districtId: '04', cityId: '12', districtName: 'Karlıova'),
    DistrictModel(districtId: '05', cityId: '12', districtName: 'Kiğı'),
    DistrictModel(districtId: '06', cityId: '12', districtName: 'Solhan'),
    DistrictModel(districtId: '07', cityId: '12', districtName: 'Yayladere'),
    DistrictModel(districtId: '08', cityId: '12', districtName: 'Yedisu'),
    DistrictModel(districtId: '01', cityId: '13', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '13', districtName: 'Adilcevaz'),
    DistrictModel(districtId: '03', cityId: '13', districtName: 'Ahlat'),
    DistrictModel(districtId: '04', cityId: '13', districtName: 'Güroymak'),
    DistrictModel(districtId: '05', cityId: '13', districtName: 'Hizan'),
    DistrictModel(districtId: '06', cityId: '13', districtName: 'Mutki'),
    DistrictModel(districtId: '07', cityId: '13', districtName: 'Tatvan'),
    DistrictModel(districtId: '01', cityId: '14', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '14', districtName: 'Dörtdivan'),
    DistrictModel(districtId: '03', cityId: '14', districtName: 'Gerede'),
    DistrictModel(districtId: '04', cityId: '14', districtName: 'Göynük'),
    DistrictModel(districtId: '05', cityId: '14', districtName: 'Kıbrıscık'),
    DistrictModel(districtId: '06', cityId: '14', districtName: 'Mengen'),
    DistrictModel(districtId: '07', cityId: '14', districtName: 'Mudurnu'),
    DistrictModel(districtId: '08', cityId: '14', districtName: 'Seben'),
    DistrictModel(districtId: '09', cityId: '14', districtName: 'Yeniçağa'),
    DistrictModel(districtId: '01', cityId: '15', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '15', districtName: 'Ağlasun'),
    DistrictModel(districtId: '03', cityId: '15', districtName: 'Altınyayla'),
    DistrictModel(districtId: '04', cityId: '15', districtName: 'Bucak'),
    DistrictModel(districtId: '05', cityId: '15', districtName: 'Çavdır'),
    DistrictModel(districtId: '06', cityId: '15', districtName: 'Çeltikçi'),
    DistrictModel(districtId: '07', cityId: '15', districtName: 'Gölhisar'),
    DistrictModel(districtId: '08', cityId: '15', districtName: 'Karamanlı'),
    DistrictModel(districtId: '09', cityId: '15', districtName: 'Kemer'),
    DistrictModel(districtId: '10', cityId: '15', districtName: 'Tefenni'),
    DistrictModel(districtId: '11', cityId: '15', districtName: 'Yeşilova'),
    DistrictModel(districtId: '01', cityId: '16', districtName: 'Büyükorhan'),
    DistrictModel(districtId: '02', cityId: '16', districtName: 'Gemlik'),
    DistrictModel(districtId: '03', cityId: '16', districtName: 'Gürsu'),
    DistrictModel(districtId: '04', cityId: '16', districtName: 'Harmancık'),
    DistrictModel(districtId: '05', cityId: '16', districtName: 'İnegöl'),
    DistrictModel(districtId: '06', cityId: '16', districtName: 'İznik'),
    DistrictModel(districtId: '07', cityId: '16', districtName: 'Karacabey'),
    DistrictModel(districtId: '08', cityId: '16', districtName: 'Keles'),
    DistrictModel(districtId: '09', cityId: '16', districtName: 'Kestel'),
    DistrictModel(districtId: '10', cityId: '16', districtName: 'Mudanya'),
    DistrictModel(
        districtId: '11', cityId: '16', districtName: 'Mustafakemalpaşa'),
    DistrictModel(districtId: '12', cityId: '16', districtName: 'Nilüfer'),
    DistrictModel(districtId: '13', cityId: '16', districtName: 'Orhaneli'),
    DistrictModel(districtId: '14', cityId: '16', districtName: 'Orhangazi'),
    DistrictModel(districtId: '15', cityId: '16', districtName: 'Osmangazi'),
    DistrictModel(districtId: '16', cityId: '16', districtName: 'Yenişehir'),
    DistrictModel(districtId: '17', cityId: '16', districtName: 'Yıldırım'),
    DistrictModel(districtId: '01', cityId: '17', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '17', districtName: 'Ayvacık'),
    DistrictModel(districtId: '03', cityId: '17', districtName: 'Bayramiç'),
    DistrictModel(districtId: '04', cityId: '17', districtName: 'Biga'),
    DistrictModel(districtId: '05', cityId: '17', districtName: 'Bozcaada'),
    DistrictModel(districtId: '06', cityId: '17', districtName: 'Çan'),
    DistrictModel(districtId: '07', cityId: '17', districtName: 'Eceabat'),
    DistrictModel(districtId: '08', cityId: '17', districtName: 'Ezine'),
    DistrictModel(districtId: '09', cityId: '17', districtName: 'Gelibolu'),
    DistrictModel(districtId: '10', cityId: '17', districtName: 'Gökçeada'),
    DistrictModel(districtId: '11', cityId: '17', districtName: 'Lapseki'),
    DistrictModel(districtId: '12', cityId: '17', districtName: 'Yenice'),
    DistrictModel(districtId: '01', cityId: '18', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '18', districtName: 'Çerkeş'),
    DistrictModel(districtId: '03', cityId: '18', districtName: 'Eldivan'),
    DistrictModel(districtId: '04', cityId: '18', districtName: 'Ilgaz'),
    DistrictModel(districtId: '05', cityId: '18', districtName: 'Kızılırmak'),
    DistrictModel(districtId: '06', cityId: '18', districtName: 'Korgun'),
    DistrictModel(districtId: '07', cityId: '18', districtName: 'Kurşunlu'),
    DistrictModel(districtId: '08', cityId: '18', districtName: 'Orta'),
    DistrictModel(districtId: '09', cityId: '18', districtName: 'Şabanözü'),
    DistrictModel(districtId: '10', cityId: '18', districtName: 'Yapraklı'),
    DistrictModel(districtId: '01', cityId: '19', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '19', districtName: 'Alaca'),
    DistrictModel(districtId: '03', cityId: '19', districtName: 'Bayat'),
    DistrictModel(districtId: '04', cityId: '19', districtName: 'Boğazkale'),
    DistrictModel(districtId: '05', cityId: '19', districtName: 'Dodurga'),
    DistrictModel(districtId: '06', cityId: '19', districtName: 'İskilip'),
    DistrictModel(districtId: '07', cityId: '19', districtName: 'Kargı'),
    DistrictModel(districtId: '08', cityId: '19', districtName: 'Laçin'),
    DistrictModel(districtId: '09', cityId: '19', districtName: 'Mecitözü'),
    DistrictModel(districtId: '10', cityId: '19', districtName: 'Oğuzlar'),
    DistrictModel(districtId: '11', cityId: '19', districtName: 'Ortaköy'),
    DistrictModel(districtId: '12', cityId: '19', districtName: 'Osmancık'),
    DistrictModel(districtId: '13', cityId: '19', districtName: 'Sungurlu'),
    DistrictModel(districtId: '14', cityId: '19', districtName: 'Uğurludağ'),
    DistrictModel(districtId: '01', cityId: '20', districtName: 'Acıpayam'),
    DistrictModel(districtId: '02', cityId: '20', districtName: 'Babadağ'),
    DistrictModel(districtId: '03', cityId: '20', districtName: 'Baklan'),
    DistrictModel(districtId: '04', cityId: '20', districtName: 'Bekilli'),
    DistrictModel(districtId: '05', cityId: '20', districtName: 'Beyağaç'),
    DistrictModel(districtId: '06', cityId: '20', districtName: 'Bozkurt'),
    DistrictModel(districtId: '07', cityId: '20', districtName: 'Buldan'),
    DistrictModel(districtId: '08', cityId: '20', districtName: 'Çal'),
    DistrictModel(districtId: '09', cityId: '20', districtName: 'Çameli'),
    DistrictModel(districtId: '10', cityId: '20', districtName: 'Çardak'),
    DistrictModel(districtId: '11', cityId: '20', districtName: 'Çivril'),
    DistrictModel(districtId: '12', cityId: '20', districtName: 'Güney'),
    DistrictModel(districtId: '13', cityId: '20', districtName: 'Honaz'),
    DistrictModel(districtId: '14', cityId: '20', districtName: 'Kale'),
    DistrictModel(districtId: '15', cityId: '20', districtName: 'Merkezefendi'),
    DistrictModel(districtId: '16', cityId: '20', districtName: 'Pamukkale'),
    DistrictModel(districtId: '17', cityId: '20', districtName: 'Sarayköy'),
    DistrictModel(districtId: '18', cityId: '20', districtName: 'Serinhisar'),
    DistrictModel(districtId: '19', cityId: '20', districtName: 'Tavas'),
    DistrictModel(districtId: '01', cityId: '21', districtName: 'Bağlar'),
    DistrictModel(districtId: '02', cityId: '21', districtName: 'Bismil'),
    DistrictModel(districtId: '03', cityId: '21', districtName: 'Çermik'),
    DistrictModel(districtId: '04', cityId: '21', districtName: 'Çınar'),
    DistrictModel(districtId: '05', cityId: '21', districtName: 'Çüngüş'),
    DistrictModel(districtId: '06', cityId: '21', districtName: 'Dicle'),
    DistrictModel(districtId: '07', cityId: '21', districtName: 'Eğil'),
    DistrictModel(districtId: '08', cityId: '21', districtName: 'Ergani'),
    DistrictModel(districtId: '09', cityId: '21', districtName: 'Hani'),
    DistrictModel(districtId: '10', cityId: '21', districtName: 'Hazro'),
    DistrictModel(districtId: '11', cityId: '21', districtName: 'Kayapınar'),
    DistrictModel(districtId: '12', cityId: '21', districtName: 'Kocaköy'),
    DistrictModel(districtId: '13', cityId: '21', districtName: 'Kulp'),
    DistrictModel(districtId: '14', cityId: '21', districtName: 'Lice'),
    DistrictModel(districtId: '15', cityId: '21', districtName: 'Silvan'),
    DistrictModel(districtId: '16', cityId: '21', districtName: 'Sur'),
    DistrictModel(districtId: '17', cityId: '21', districtName: 'Yenişehir'),
    DistrictModel(districtId: '01', cityId: '22', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '22', districtName: 'Enez'),
    DistrictModel(districtId: '03', cityId: '22', districtName: 'Havsa'),
    DistrictModel(districtId: '04', cityId: '22', districtName: 'İpsala'),
    DistrictModel(districtId: '05', cityId: '22', districtName: 'Keşan'),
    DistrictModel(districtId: '06', cityId: '22', districtName: 'Lalapaşa'),
    DistrictModel(districtId: '07', cityId: '22', districtName: 'Meriç'),
    DistrictModel(districtId: '08', cityId: '22', districtName: 'Süloğlu'),
    DistrictModel(districtId: '09', cityId: '22', districtName: 'Uzunköprü'),
    DistrictModel(districtId: '01', cityId: '23', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '23', districtName: 'Ağın'),
    DistrictModel(districtId: '03', cityId: '23', districtName: 'Alacakaya'),
    DistrictModel(districtId: '04', cityId: '23', districtName: 'Arıcak'),
    DistrictModel(districtId: '05', cityId: '23', districtName: 'Baskil'),
    DistrictModel(districtId: '06', cityId: '23', districtName: 'Karakoçan'),
    DistrictModel(districtId: '07', cityId: '23', districtName: 'Keban'),
    DistrictModel(districtId: '08', cityId: '23', districtName: 'Kovancılar'),
    DistrictModel(districtId: '09', cityId: '23', districtName: 'Maden'),
    DistrictModel(districtId: '10', cityId: '23', districtName: 'Palu'),
    DistrictModel(districtId: '11', cityId: '23', districtName: 'Sivrice'),
    DistrictModel(districtId: '01', cityId: '2', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '24', districtName: 'Çayırlı'),
    DistrictModel(districtId: '03', cityId: '24', districtName: 'İliç'),
    DistrictModel(districtId: '05', cityId: '24', districtName: 'Kemah'),
    DistrictModel(districtId: '06', cityId: '24', districtName: 'Kemaliye'),
    DistrictModel(districtId: '07', cityId: '24', districtName: 'Otlukbeli'),
    DistrictModel(districtId: '08', cityId: '24', districtName: 'Refahiye'),
    DistrictModel(districtId: '09', cityId: '24', districtName: 'Tercan'),
    DistrictModel(districtId: '10', cityId: '24', districtName: 'Üzümlü'),
    DistrictModel(districtId: '01', cityId: '25', districtName: 'Aziziye'),
    DistrictModel(districtId: '02', cityId: '25', districtName: 'Palandöken'),
    DistrictModel(districtId: '03', cityId: '25', districtName: 'Yakutiye'),
    DistrictModel(districtId: '04', cityId: '25', districtName: 'Yıldızkent'),
    DistrictModel(districtId: '05', cityId: '25', districtName: 'Horasan'),
    DistrictModel(districtId: '06', cityId: '25', districtName: 'Pasinler'),
    DistrictModel(districtId: '07', cityId: '25', districtName: 'Karaçoban'),
    DistrictModel(districtId: '08', cityId: '25', districtName: 'Aşkale'),
    DistrictModel(districtId: '09', cityId: '25', districtName: 'Hınıs'),
    DistrictModel(districtId: '10', cityId: '25', districtName: 'Tekman'),
    DistrictModel(districtId: '11', cityId: '25', districtName: 'İspir'),
    DistrictModel(districtId: '12', cityId: '25', districtName: 'Oltu'),
    DistrictModel(districtId: '13', cityId: '25', districtName: 'Uzundere'),
    DistrictModel(districtId: '14', cityId: '25', districtName: 'Narman'),
    DistrictModel(districtId: '15', cityId: '25', districtName: 'Oltu'),
    DistrictModel(districtId: '01', cityId: '26', districtName: 'Odunpazarı'),
    DistrictModel(districtId: '02', cityId: '26', districtName: 'Tepebaşı'),
    DistrictModel(districtId: '03', cityId: '26', districtName: 'Beylikova'),
    DistrictModel(districtId: '04', cityId: '26', districtName: 'Çifteler'),
    DistrictModel(districtId: '05', cityId: '26', districtName: 'Günyüzü'),
    DistrictModel(districtId: '06', cityId: '26', districtName: 'Han'),
    DistrictModel(districtId: '07', cityId: '26', districtName: 'İnönü'),
    DistrictModel(districtId: '08', cityId: '26', districtName: 'Mahmudiye'),
    DistrictModel(districtId: '09', cityId: '26', districtName: 'Mihalgazi'),
    DistrictModel(districtId: '10', cityId: '26', districtName: 'Mihalıççık'),
    DistrictModel(districtId: '11', cityId: '26', districtName: 'Sarıcakaya'),
    DistrictModel(districtId: '12', cityId: '26', districtName: 'Seyitgazi'),
    DistrictModel(districtId: '13', cityId: '26', districtName: 'Sivrihisar'),
    DistrictModel(districtId: '01', cityId: '27', districtName: 'Şahinbey'),
    DistrictModel(districtId: '02', cityId: '27', districtName: 'Şehitkamil'),
    DistrictModel(districtId: '03', cityId: '27', districtName: 'Oğuzeli'),
    DistrictModel(districtId: '04', cityId: '27', districtName: 'Karkamış'),
    DistrictModel(districtId: '05', cityId: '27', districtName: 'Yavuzeli'),
    DistrictModel(districtId: '06', cityId: '27', districtName: 'Araban'),
    DistrictModel(districtId: '07', cityId: '27', districtName: 'Nizip'),
    DistrictModel(districtId: '01', cityId: '28', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '28', districtName: 'Bulancak'),
    DistrictModel(districtId: '03', cityId: '28', districtName: 'Dereli'),
    DistrictModel(districtId: '04', cityId: '28', districtName: 'Espiye'),
    DistrictModel(districtId: '05', cityId: '28', districtName: 'Eynesil'),
    DistrictModel(districtId: '06', cityId: '28', districtName: 'Görele'),
    DistrictModel(districtId: '07', cityId: '28', districtName: 'Keşap'),
    DistrictModel(districtId: '08', cityId: '28', districtName: 'Piraziz'),
    DistrictModel(
        districtId: '09', cityId: '28', districtName: 'Şebinkarahisar'),
    DistrictModel(districtId: '10', cityId: '28', districtName: 'Tirebolu'),
    DistrictModel(districtId: '11', cityId: '28', districtName: 'Yağlıdere'),
    DistrictModel(districtId: '01', cityId: '29', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '29', districtName: 'Kelkit'),
    DistrictModel(districtId: '03', cityId: '29', districtName: 'Şiran'),
    DistrictModel(districtId: '04', cityId: '29', districtName: 'Torul'),
    DistrictModel(districtId: '05', cityId: '29', districtName: 'Köse'),
    DistrictModel(districtId: '06', cityId: '29', districtName: 'Kürtün'),
    DistrictModel(districtId: '01', cityId: '30', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '30', districtName: 'Çukurca'),
    DistrictModel(districtId: '03', cityId: '30', districtName: 'Şemdinli'),
    DistrictModel(districtId: '04', cityId: '30', districtName: 'Yüksekova'),
    DistrictModel(districtId: '04', cityId: '30', districtName: 'Derecik'),
    DistrictModel(districtId: '01', cityId: '31', districtName: 'Antakya'),
    DistrictModel(districtId: '02', cityId: '31', districtName: 'Defne'),
    DistrictModel(districtId: '03', cityId: '31', districtName: 'Kırıkhan'),
    DistrictModel(districtId: '04', cityId: '31', districtName: 'Arsuz'),
    DistrictModel(districtId: '05', cityId: '31', districtName: 'Payas'),
    DistrictModel(districtId: '06', cityId: '31', districtName: 'Samandağ'),
    DistrictModel(districtId: '07', cityId: '31', districtName: 'Dörtyol'),
    DistrictModel(districtId: '08', cityId: '31', districtName: 'Erzin'),
    DistrictModel(districtId: '09', cityId: '31', districtName: 'Hassa'),
    DistrictModel(districtId: '10', cityId: '31', districtName: 'İskenderun'),
    DistrictModel(districtId: '11', cityId: '31', districtName: 'Reyhanlı'),
    DistrictModel(districtId: '12', cityId: '31', districtName: 'Yayladağı'),
    DistrictModel(districtId: '01', cityId: '32', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '32', districtName: 'Atabey'),
    DistrictModel(districtId: '03', cityId: '32', districtName: 'Eğirdir'),
    DistrictModel(districtId: '04', cityId: '32', districtName: 'Gelendost'),
    DistrictModel(districtId: '05', cityId: '32', districtName: 'Gönen'),
    DistrictModel(districtId: '06', cityId: '32', districtName: 'Keçiborlu'),
    DistrictModel(districtId: '07', cityId: '32', districtName: 'Senirkent'),
    DistrictModel(districtId: '08', cityId: '32', districtName: 'Sütçüler'),
    DistrictModel(
        districtId: '09', cityId: '32', districtName: 'Şarkikaraağaç'),
    DistrictModel(districtId: '10', cityId: '32', districtName: 'Uluborlu'),
    DistrictModel(districtId: '11', cityId: '32', districtName: 'Yalvaç'),
    DistrictModel(
        districtId: '12', cityId: '32', districtName: 'Yenişarbademli'),
    DistrictModel(districtId: '01', cityId: '33', districtName: 'Akdeniz'),
    DistrictModel(districtId: '02', cityId: '33', districtName: 'Mezitli'),
    DistrictModel(districtId: '03', cityId: '33', districtName: 'Toroslar'),
    DistrictModel(districtId: '04', cityId: '33', districtName: 'Yenişehir'),
    DistrictModel(districtId: '05', cityId: '33', districtName: 'Anamur'),
    DistrictModel(districtId: '06', cityId: '33', districtName: 'Erdemli'),
    DistrictModel(districtId: '07', cityId: '33', districtName: 'Gülnar'),
    DistrictModel(districtId: '08', cityId: '33', districtName: 'Mut'),
    DistrictModel(districtId: '09', cityId: '33', districtName: 'Silifke'),
    DistrictModel(districtId: '10', cityId: '33', districtName: 'Tarsus'),
    DistrictModel(districtId: '01', cityId: '34', districtName: 'Adalar'),
    DistrictModel(districtId: '02', cityId: '34', districtName: 'Arnavutköy'),
    DistrictModel(districtId: '03', cityId: '34', districtName: 'Ataşehir'),
    DistrictModel(districtId: '04', cityId: '34', districtName: 'Avcılar'),
    DistrictModel(districtId: '05', cityId: '34', districtName: 'Bağcılar'),
    DistrictModel(districtId: '06', cityId: '34', districtName: 'Bahçelievler'),
    DistrictModel(districtId: '07', cityId: '34', districtName: 'Bakırköy'),
    DistrictModel(districtId: '08', cityId: '34', districtName: 'Başakşehir'),
    DistrictModel(districtId: '09', cityId: '34', districtName: 'Bayrampaşa'),
    DistrictModel(districtId: '10', cityId: '34', districtName: 'Beşiktaş'),
    DistrictModel(districtId: '11', cityId: '34', districtName: 'Beykoz'),
    DistrictModel(districtId: '12', cityId: '34', districtName: 'Beylikdüzü'),
    DistrictModel(districtId: '13', cityId: '34', districtName: 'Beyoğlu'),
    DistrictModel(districtId: '14', cityId: '34', districtName: 'Büyükçekmece'),
    DistrictModel(districtId: '15', cityId: '34', districtName: 'Çatalca'),
    DistrictModel(districtId: '16', cityId: '34', districtName: 'Çekmeköy'),
    DistrictModel(districtId: '17', cityId: '34', districtName: 'Esenler'),
    DistrictModel(districtId: '18', cityId: '34', districtName: 'Esenyurt'),
    DistrictModel(districtId: '19', cityId: '34', districtName: 'Eyüpsultan'),
    DistrictModel(districtId: '20', cityId: '34', districtName: 'Fatih'),
    DistrictModel(
        districtId: '21', cityId: '34', districtName: 'Gaziosmanpaşa'),
    DistrictModel(districtId: '22', cityId: '34', districtName: 'Güngören'),
    DistrictModel(districtId: '23', cityId: '34', districtName: 'Kadıköy'),
    DistrictModel(districtId: '24', cityId: '34', districtName: 'Kağıthane'),
    DistrictModel(districtId: '25', cityId: '34', districtName: 'Kartal'),
    DistrictModel(districtId: '26', cityId: '34', districtName: 'Küçükçekmece'),
    DistrictModel(districtId: '27', cityId: '34', districtName: 'Maltepe'),
    DistrictModel(districtId: '28', cityId: '34', districtName: 'Pendik'),
    DistrictModel(districtId: '29', cityId: '34', districtName: 'Sancaktepe'),
    DistrictModel(districtId: '30', cityId: '34', districtName: 'Sarıyer'),
    DistrictModel(districtId: '31', cityId: '34', districtName: 'Silivri'),
    DistrictModel(districtId: '32', cityId: '34', districtName: 'Sultanbeyli'),
    DistrictModel(districtId: '33', cityId: '34', districtName: 'Sultangazi'),
    DistrictModel(districtId: '34', cityId: '34', districtName: 'Şile'),
    DistrictModel(districtId: '35', cityId: '34', districtName: 'Şişli'),
    DistrictModel(districtId: '36', cityId: '34', districtName: 'Tuzla'),
    DistrictModel(districtId: '37', cityId: '34', districtName: 'Ümraniye'),
    DistrictModel(districtId: '38', cityId: '34', districtName: 'Üsküdar'),
    DistrictModel(districtId: '39', cityId: '34', districtName: 'Zeytinburnu'),
    DistrictModel(districtId: '01', cityId: '35', districtName: 'Konak'),
    DistrictModel(districtId: '02', cityId: '35', districtName: 'Buca'),
    DistrictModel(districtId: '03', cityId: '35', districtName: 'Karşıyaka'),
    DistrictModel(districtId: '04', cityId: '35', districtName: 'Bornova'),
    DistrictModel(districtId: '05', cityId: '35', districtName: 'Bayraklı'),
    DistrictModel(districtId: '06', cityId: '35', districtName: 'Çiğli'),
    DistrictModel(districtId: '07', cityId: '35', districtName: 'Gaziemir'),
    DistrictModel(districtId: '08', cityId: '35', districtName: 'Karabağlar'),
    DistrictModel(districtId: '09', cityId: '35', districtName: 'Narlıdere'),
    DistrictModel(districtId: '10', cityId: '35', districtName: 'Bergama'),
    DistrictModel(districtId: '11', cityId: '35', districtName: 'Torbalı'),
    DistrictModel(districtId: '12', cityId: '35', districtName: 'Menemen'),
    DistrictModel(districtId: '13', cityId: '35', districtName: 'Urla'),
    DistrictModel(districtId: '14', cityId: '35', districtName: 'Güzelbahçe'),
    DistrictModel(districtId: '15', cityId: '35', districtName: 'Seferihisar'),
    DistrictModel(districtId: '16', cityId: '35', districtName: 'Selçuk'),
    DistrictModel(districtId: '17', cityId: '35', districtName: 'Ödemiş'),
    DistrictModel(districtId: '18', cityId: '35', districtName: 'Kiraz'),
    DistrictModel(districtId: '19', cityId: '35', districtName: 'Beydağ'),
    DistrictModel(districtId: '20', cityId: '35', districtName: 'Kemalpaşa'),
    DistrictModel(districtId: '21', cityId: '35', districtName: 'Tire'),
    DistrictModel(districtId: '22', cityId: '35', districtName: 'Aliağa'),
    DistrictModel(districtId: '23', cityId: '35', districtName: 'Dikili'),
    DistrictModel(districtId: '24', cityId: '35', districtName: 'Bayındır'),
    DistrictModel(districtId: '25', cityId: '35', districtName: 'Beykoz'),
    DistrictModel(districtId: '26', cityId: '35', districtName: 'Çeşme'),
    DistrictModel(districtId: '27', cityId: '35', districtName: 'Foça'),
    DistrictModel(districtId: '28', cityId: '35', districtName: 'Karaburun'),
    DistrictModel(districtId: '29', cityId: '35', districtName: 'Kınık'),
    DistrictModel(districtId: '30', cityId: '35', districtName: 'Menderes'),
    DistrictModel(districtId: '31', cityId: '35', districtName: 'Özdere'),
    DistrictModel(districtId: '32', cityId: '35', districtName: 'Bergama'),
    DistrictModel(districtId: '33', cityId: '35', districtName: 'Seferihisar'),
    DistrictModel(districtId: '01', cityId: '36', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '36', districtName: 'Akyaka'),
    DistrictModel(districtId: '03', cityId: '36', districtName: 'Arpaçay'),
    DistrictModel(districtId: '04', cityId: '36', districtName: 'Digor'),
    DistrictModel(districtId: '05', cityId: '36', districtName: 'Kağızman'),
    DistrictModel(districtId: '06', cityId: '36', districtName: 'Sarıkamış'),
    DistrictModel(districtId: '07', cityId: '36', districtName: 'Selim'),
    DistrictModel(districtId: '08', cityId: '36', districtName: 'Susuz'),
    DistrictModel(districtId: '01', cityId: '37', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '37', districtName: 'Abana'),
    DistrictModel(districtId: '03', cityId: '37', districtName: 'Ağlı'),
    DistrictModel(districtId: '04', cityId: '37', districtName: 'Araç'),
    DistrictModel(districtId: '05', cityId: '37', districtName: 'Azdavay'),
    DistrictModel(districtId: '06', cityId: '37', districtName: 'Bozkurt'),
    DistrictModel(districtId: '07', cityId: '37', districtName: 'Cide'),
    DistrictModel(districtId: '08', cityId: '37', districtName: 'Çatalzeytin'),
    DistrictModel(districtId: '09', cityId: '37', districtName: 'Daday'),
    DistrictModel(districtId: '10', cityId: '37', districtName: 'Devrekani'),
    DistrictModel(districtId: '11', cityId: '37', districtName: 'Doğanyurt'),
    DistrictModel(districtId: '12', cityId: '37', districtName: 'Hanönü'),
    DistrictModel(districtId: '13', cityId: '37', districtName: 'İhsangazi'),
    DistrictModel(districtId: '14', cityId: '37', districtName: 'İnebolu'),
    DistrictModel(districtId: '15', cityId: '37', districtName: 'Küre'),
    DistrictModel(districtId: '16', cityId: '37', districtName: 'Pınarbaşı'),
    DistrictModel(districtId: '17', cityId: '37', districtName: 'Seydiler'),
    DistrictModel(districtId: '18', cityId: '37', districtName: 'Şenpazar'),
    DistrictModel(districtId: '19', cityId: '37', districtName: 'Taşköprü'),
    DistrictModel(districtId: '20', cityId: '37', districtName: 'Tosya'),
    DistrictModel(districtId: '01', cityId: '38', districtName: 'Kocasinan'),
    DistrictModel(districtId: '02', cityId: '38', districtName: 'Melikgazi'),
    DistrictModel(districtId: '03', cityId: '38', districtName: 'Talas'),
    DistrictModel(districtId: '04', cityId: '38', districtName: 'Büyükorhan'),
    DistrictModel(districtId: '05', cityId: '38', districtName: 'Felahiye'),
    DistrictModel(districtId: '06', cityId: '38', districtName: 'Hacılar'),
    DistrictModel(districtId: '07', cityId: '38', districtName: 'İncesu'),
    DistrictModel(districtId: '08', cityId: '38', districtName: 'Kocasinan'),
    DistrictModel(districtId: '09', cityId: '38', districtName: 'Melikgazi'),
    DistrictModel(districtId: '10', cityId: '38', districtName: 'Özvatan'),
    DistrictModel(districtId: '11', cityId: '38', districtName: 'Pınarbaşı'),
    DistrictModel(districtId: '12', cityId: '38', districtName: 'Sarıoğlan'),
    DistrictModel(districtId: '13', cityId: '38', districtName: 'Sarız'),
    DistrictModel(districtId: '14', cityId: '38', districtName: 'Talas'),
    DistrictModel(districtId: '15', cityId: '38', districtName: 'Tomarza'),
    DistrictModel(districtId: '16', cityId: '38', districtName: 'Yahyalı'),
    DistrictModel(districtId: '17', cityId: '38', districtName: 'Yeşilhisar'),
    DistrictModel(districtId: '01', cityId: '39', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '39', districtName: 'Babaeski'),
    DistrictModel(districtId: '03', cityId: '39', districtName: 'Demirköy'),
    DistrictModel(districtId: '04', cityId: '39', districtName: 'Kofçaz'),
    DistrictModel(districtId: '05', cityId: '39', districtName: 'Lüleburgaz'),
    DistrictModel(districtId: '06', cityId: '39', districtName: 'Pehlivanköy'),
    DistrictModel(districtId: '07', cityId: '39', districtName: 'Pınarhisar'),
    DistrictModel(districtId: '08', cityId: '39', districtName: 'Vize'),
    DistrictModel(districtId: '01', cityId: '40', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '40', districtName: 'Akpınar'),
    DistrictModel(districtId: '03', cityId: '40', districtName: 'Boztepe'),
    DistrictModel(districtId: '04', cityId: '40', districtName: 'Çiçekdağı'),
    DistrictModel(districtId: '05', cityId: '40', districtName: 'Kaman'),
    DistrictModel(districtId: '06', cityId: '40', districtName: 'Mucur'),
    DistrictModel(districtId: '01', cityId: '41', districtName: 'İzmit'),
    DistrictModel(districtId: '02', cityId: '41', districtName: 'Gebze'),
    DistrictModel(districtId: '03', cityId: '41', districtName: 'Gölcük'),
    DistrictModel(districtId: '04', cityId: '41', districtName: 'Kandıra'),
    DistrictModel(districtId: '05', cityId: '41', districtName: 'Karamürsel'),
    DistrictModel(districtId: '06', cityId: '41', districtName: 'Körfez'),
    DistrictModel(districtId: '07', cityId: '41', districtName: 'Derince'),
    DistrictModel(districtId: '08', cityId: '41', districtName: 'Başiskele'),
    DistrictModel(districtId: '09', cityId: '41', districtName: 'Çayırova'),
    DistrictModel(districtId: '10', cityId: '41', districtName: 'Dilovası'),
    DistrictModel(districtId: '11', cityId: '41', districtName: 'Kartepe'),
    DistrictModel(districtId: '01', cityId: '42', districtName: 'Selçuklu'),
    DistrictModel(districtId: '02', cityId: '42', districtName: 'Meram'),
    DistrictModel(districtId: '03', cityId: '42', districtName: 'Karatay'),
    DistrictModel(districtId: '04', cityId: '42', districtName: 'Beyşehir'),
    DistrictModel(districtId: '05', cityId: '42', districtName: 'Akşehir'),
    DistrictModel(districtId: '06', cityId: '42', districtName: 'Ereğli'),
    DistrictModel(districtId: '07', cityId: '42', districtName: 'Seydişehir'),
    DistrictModel(districtId: '08', cityId: '42', districtName: 'Hadim'),
    DistrictModel(districtId: '09', cityId: '42', districtName: 'Yunak'),
    DistrictModel(districtId: '10', cityId: '42', districtName: 'Doğanhisar'),
    DistrictModel(districtId: '11', cityId: '42', districtName: 'Ilgın'),
    DistrictModel(districtId: '12', cityId: '42', districtName: 'Kulu'),
    DistrictModel(districtId: '13', cityId: '42', districtName: 'Tuzlukçu'),
    DistrictModel(districtId: '14', cityId: '42', districtName: 'Yalıhüyük'),
    DistrictModel(districtId: '15', cityId: '42', districtName: 'Akören'),
    DistrictModel(districtId: '16', cityId: '42', districtName: 'Altınekin'),
    DistrictModel(districtId: '17', cityId: '42', districtName: 'Derebucak'),
    DistrictModel(districtId: '18', cityId: '42', districtName: 'Hüyük'),
    DistrictModel(districtId: '19', cityId: '42', districtName: 'Karatay'),
    DistrictModel(districtId: '20', cityId: '42', districtName: 'Meram'),
    DistrictModel(districtId: '01', cityId: '43', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '43', districtName: 'Altıntaş'),
    DistrictModel(districtId: '03', cityId: '43', districtName: 'Domaniç'),
    DistrictModel(districtId: '04', cityId: '43', districtName: 'Emet'),
    DistrictModel(districtId: '05', cityId: '43', districtName: 'Simav'),
    DistrictModel(districtId: '06', cityId: '43', districtName: 'Tavşanlı'),
    DistrictModel(districtId: '07', cityId: '43', districtName: 'Gediz'),
    DistrictModel(districtId: '08', cityId: '43', districtName: 'Hisarcık'),
    DistrictModel(districtId: '09', cityId: '43', districtName: 'Şaphane'),
    DistrictModel(districtId: '10', cityId: '43', districtName: 'Çavdarhisar'),
    DistrictModel(districtId: '11', cityId: '43', districtName: 'Pazarlar'),
    DistrictModel(districtId: '12', cityId: '43', districtName: 'Aslanapa'),
    DistrictModel(districtId: '13', cityId: '43', districtName: 'Dumlupınar'),
    DistrictModel(districtId: '14', cityId: '43', districtName: 'Hisarcık'),
    DistrictModel(districtId: '15', cityId: '43', districtName: 'Simav'),
    DistrictModel(districtId: '16', cityId: '43', districtName: 'Tavşanlı'),
    DistrictModel(districtId: '16', cityId: '44', districtName: 'Pütürge'),
    DistrictModel(districtId: '17', cityId: '44', districtName: 'Yeşilyurt'),
    DistrictModel(districtId: '18', cityId: '44', districtName: 'Yazıhan'),
    DistrictModel(districtId: '19', cityId: '44', districtName: 'Doğanyol'),
    DistrictModel(districtId: '20', cityId: '44', districtName: 'Kale'),
    DistrictModel(districtId: '21', cityId: '44', districtName: 'Arguvan'),
    DistrictModel(districtId: '22', cityId: '44', districtName: 'Battalgazi'),
    DistrictModel(districtId: '23', cityId: '44', districtName: 'Darende'),
    DistrictModel(districtId: '24', cityId: '44', districtName: 'Hekimhan'),
    DistrictModel(districtId: '25', cityId: '44', districtName: 'Akçadağ'),
    DistrictModel(districtId: '26', cityId: '44', districtName: 'Arapgir'),
    DistrictModel(districtId: '01', cityId: '45', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '45', districtName: 'Akhisar'),
    DistrictModel(districtId: '03', cityId: '45', districtName: 'Soma'),
    DistrictModel(districtId: '04', cityId: '45', districtName: 'Turgutlu'),
    DistrictModel(districtId: '05', cityId: '45', districtName: 'Salihli'),
    DistrictModel(districtId: '06', cityId: '45', districtName: 'Sarıgöl'),
    DistrictModel(districtId: '07', cityId: '45', districtName: 'Alaşehir'),
    DistrictModel(districtId: '08', cityId: '45', districtName: 'Demirci'),
    DistrictModel(districtId: '09', cityId: '45', districtName: 'Gördes'),
    DistrictModel(districtId: '10', cityId: '45', districtName: 'Kırkağaç'),
    DistrictModel(districtId: '11', cityId: '45', districtName: 'Kula'),
    DistrictModel(districtId: '12', cityId: '45', districtName: 'Saruhanlı'),
    DistrictModel(districtId: '13', cityId: '45', districtName: 'Selendi'),
    DistrictModel(districtId: '14', cityId: '45', districtName: 'Ahmetli'),
    DistrictModel(districtId: '15', cityId: '45', districtName: 'Gölmarmara'),
    DistrictModel(districtId: '01', cityId: '46', districtName: 'Dulkadiroğlu'),
    DistrictModel(districtId: '02', cityId: '46', districtName: 'Onikişubat'),
    DistrictModel(districtId: '03', cityId: '46', districtName: 'Afşin'),
    DistrictModel(districtId: '04', cityId: '46', districtName: 'Elbistan'),
    DistrictModel(districtId: '05', cityId: '46', districtName: 'Göksun'),
    DistrictModel(districtId: '06', cityId: '46', districtName: 'Andırın'),
    DistrictModel(
        districtId: '07', cityId: '46', districtName: 'Çağlayancerit'),
    DistrictModel(districtId: '08', cityId: '46', districtName: 'Ekinözü'),
    DistrictModel(districtId: '09', cityId: '46', districtName: 'Nurhak'),
    DistrictModel(districtId: '10', cityId: '46', districtName: 'Pazarcık'),
    DistrictModel(districtId: '08', cityId: '47', districtName: 'Savur'),
    DistrictModel(districtId: '09', cityId: '47', districtName: 'Dargeçit'),
    DistrictModel(districtId: '10', cityId: '47', districtName: 'Derik'),
    DistrictModel(districtId: '11', cityId: '47', districtName: 'Kızıltepe'),
    DistrictModel(districtId: '12', cityId: '47', districtName: 'Mazıdağı'),
    DistrictModel(districtId: '13', cityId: '47', districtName: 'Midyat'),
    DistrictModel(districtId: '14', cityId: '47', districtName: 'Nusaybin'),
    DistrictModel(districtId: '15', cityId: '47', districtName: 'Ömerli'),
    DistrictModel(districtId: '16', cityId: '47', districtName: 'Savur'),
    DistrictModel(districtId: '17', cityId: '47', districtName: 'Yeşilli'),
    DistrictModel(districtId: '01', cityId: '48', districtName: 'Bodrum'),
    DistrictModel(districtId: '02', cityId: '48', districtName: 'Datça'),
    DistrictModel(districtId: '03', cityId: '48', districtName: 'Fethiye'),
    DistrictModel(districtId: '04', cityId: '48', districtName: 'Köyceğiz'),
    DistrictModel(districtId: '05', cityId: '48', districtName: 'Marmaris'),
    DistrictModel(districtId: '06', cityId: '48', districtName: 'Milas'),
    DistrictModel(districtId: '07', cityId: '48', districtName: 'Ula'),
    DistrictModel(districtId: '08', cityId: '48', districtName: 'Yatağan'),
    DistrictModel(districtId: '09', cityId: '48', districtName: 'Dalaman'),
    DistrictModel(districtId: '10', cityId: '48', districtName: 'Ortaca'),
    DistrictModel(districtId: '11', cityId: '48', districtName: 'Kavaklıdere'),
    DistrictModel(districtId: '01', cityId: '49', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '49', districtName: 'Bulanık'),
    DistrictModel(districtId: '03', cityId: '49', districtName: 'Malazgirt'),
    DistrictModel(districtId: '04', cityId: '49', districtName: 'Varto'),
    DistrictModel(districtId: '01', cityId: '50', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '50', districtName: 'Acıgöl'),
    DistrictModel(districtId: '03', cityId: '50', districtName: 'Avanos'),
    DistrictModel(districtId: '04', cityId: '50', districtName: 'Derinkuyu'),
    DistrictModel(districtId: '05', cityId: '50', districtName: 'Gülşehir'),
    DistrictModel(districtId: '06', cityId: '50', districtName: 'Hacıbektaş'),
    DistrictModel(districtId: '07', cityId: '50', districtName: 'Kozaklı'),
    DistrictModel(districtId: '08', cityId: '50', districtName: 'Ürgüp'),
    DistrictModel(districtId: '01', cityId: '51', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '51', districtName: 'Altunhisar'),
    DistrictModel(districtId: '03', cityId: '51', districtName: 'Bor'),
    DistrictModel(districtId: '04', cityId: '51', districtName: 'Çamardı'),
    DistrictModel(districtId: '05', cityId: '51', districtName: 'Çiftlik'),
    DistrictModel(districtId: '06', cityId: '51', districtName: 'Ulukışla'),
    DistrictModel(districtId: '01', cityId: '52', districtName: 'Akkuş'),
    DistrictModel(districtId: '02', cityId: '52', districtName: 'Altınordu'),
    DistrictModel(districtId: '03', cityId: '52', districtName: 'Aybastı'),
    DistrictModel(districtId: '04', cityId: '52', districtName: 'Çamaş'),
    DistrictModel(districtId: '05', cityId: '52', districtName: 'Çatalpınar'),
    DistrictModel(districtId: '06', cityId: '52', districtName: 'Çaybaşı'),
    DistrictModel(districtId: '07', cityId: '52', districtName: 'Fatsa'),
    DistrictModel(districtId: '08', cityId: '52', districtName: 'Gölköy'),
    DistrictModel(districtId: '09', cityId: '52', districtName: 'Gülyalı'),
    DistrictModel(districtId: '10', cityId: '52', districtName: 'Gürgentepe'),
    DistrictModel(districtId: '11', cityId: '52', districtName: 'İkizce'),
    DistrictModel(districtId: '12', cityId: '52', districtName: 'Kabadüz'),
    DistrictModel(districtId: '13', cityId: '52', districtName: 'Korgan'),
    DistrictModel(districtId: '14', cityId: '52', districtName: 'Kumru'),
    DistrictModel(districtId: '15', cityId: '52', districtName: 'Mesudiye'),
    DistrictModel(districtId: '16', cityId: '52', districtName: 'Perşembe'),
    DistrictModel(districtId: '17', cityId: '52', districtName: 'Ulubey'),
    DistrictModel(districtId: '18', cityId: '52', districtName: 'Ünye'),
    DistrictModel(districtId: '01', cityId: '53', districtName: 'Merkez'),
    DistrictModel(districtId: '02', cityId: '53', districtName: 'Ardeşen'),
    DistrictModel(districtId: '03', cityId: '53', districtName: 'Çamlıhemşin'),
    DistrictModel(districtId: '04', cityId: '53', districtName: 'Çayeli'),
    DistrictModel(districtId: '05', cityId: '53', districtName: 'Derepazarı'),
    DistrictModel(districtId: '06', cityId: '53', districtName: 'Fındıklı'),
    DistrictModel(districtId: '07', cityId: '53', districtName: 'Güneysu'),
    DistrictModel(districtId: '08', cityId: '53', districtName: 'Hemşin'),
    DistrictModel(districtId: '09', cityId: '53', districtName: 'İkizdere'),
    DistrictModel(districtId: '10', cityId: '53', districtName: 'İyidere'),
    DistrictModel(districtId: '11', cityId: '53', districtName: 'Kalkandere'),
    DistrictModel(districtId: '12', cityId: '53', districtName: 'Pazar'),
    DistrictModel(districtId: '01', cityId: '54', districtName: 'Adapazarı'),
    DistrictModel(districtId: '02', cityId: '54', districtName: 'Akyazı'),
    DistrictModel(districtId: '03', cityId: '54', districtName: 'Arifiye'),
    DistrictModel(districtId: '04', cityId: '54', districtName: 'Erenler'),
    DistrictModel(districtId: '05', cityId: '54', districtName: 'Ferizli'),
    DistrictModel(districtId: '06', cityId: '54', districtName: 'Geyve'),
    DistrictModel(districtId: '07', cityId: '54', districtName: 'Hendek'),
    DistrictModel(districtId: '08', cityId: '54', districtName: 'Karapürçek'),
    DistrictModel(districtId: '09', cityId: '54', districtName: 'Karasu'),
    DistrictModel(districtId: '10', cityId: '54', districtName: 'Kaynarca'),
    DistrictModel(districtId: '11', cityId: '54', districtName: 'Kocaali'),
    DistrictModel(districtId: '12', cityId: '54', districtName: 'Pamukova'),
    DistrictModel(districtId: '13', cityId: '54', districtName: 'Sapanca'),
    DistrictModel(districtId: '14', cityId: '54', districtName: 'Serdivan'),
    DistrictModel(districtId: '15', cityId: '54', districtName: 'Söğütlü'),
    DistrictModel(districtId: '16', cityId: '54', districtName: 'Taraklı'),
  ];

  List<ProductType> productTypes = [
    ProductType(id: "1", typeName: "Beyaz Eşya"),
    ProductType(id: "2", typeName: "Stok Ürün"),
    ProductType(id: "3", typeName: "Et vb. Yiyecek Ürünleri"),
    ProductType(id: "4", typeName: "Geri Dönüşüm"),
    ProductType(id: "4", typeName: "Demir"),
    ProductType(id: "4", typeName: "Metal Panel"),
    ProductType(id: "4", typeName: "Çelik"),
    ProductType(id: "4", typeName: "Tekstil Ürünleri"),
    ProductType(id: "4", typeName: "Hammadde"),
    ProductType(id: "4", typeName: "Sevkiyatı Tamamlanmamış ürünler"),
    ProductType(id: "4", typeName: "Gümrük Ürünleri"),
    ProductType(id: "4", typeName: "Ev Eşyası"),
    ProductType(id: "5", typeName: "Diğer"),
  ];

  List<WarehouseTime> warehouseTimeList = [
    WarehouseTime(id: "1", value: "1 Ay"),
    WarehouseTime(id: "2", value: "2 Ay"),
    WarehouseTime(id: "3", value: "3 Ay"),
    WarehouseTime(id: "4", value: "4 Ay"),
    WarehouseTime(id: "5", value: "5 Ay"),
    WarehouseTime(id: "6", value: "6 Ay"),
    WarehouseTime(id: "7", value: "7 Ay"),
    WarehouseTime(id: "8", value: "8 Ay"),
    WarehouseTime(id: "9", value: "9 Ay"),
    WarehouseTime(id: "10", value: "10 Ay"),
    WarehouseTime(id: "11", value: "11 Ay"),
    WarehouseTime(id: "12", value: "12 Ay"),
  ];

  List<WarehouseType> warehouseType = [
    WarehouseType(id: "1", value: "Açık Hava Deposu"),
    WarehouseType(id: "2", value: "Kapalı Hava Deposu"),
    WarehouseType(id: "3", value: "Soğuk Hava Deposu"),
    WarehouseType(id: "4", value: "Geleneksel Depolar"),
    WarehouseType(id: "3", value: "Otomatik Depolar"),
    WarehouseType(id: "3", value: "Antrepo"),
  ];

  CityModel selectedCity =
      CityModel(cityId: "-1", cityName: "Lütfen İl Seçiniz");
  int selectedIndex = -1;
  DistrictModel selectedDistrict = DistrictModel(
      cityId: "-1", districtId: "-1", districtName: "Lütfen İlçe Seçiniz");
  List<DistrictModel> districtList = [];
  int selectedDistrictIndex = -1;
  ProductType selectedProductType =
      ProductType(id: "-1", typeName: "Lütfen Ürün tipini seçiniz...");
  int selectedProductTypeIndex = -1;
  WarehouseTime selectedWarehouseTime =
      WarehouseTime(id: "-1", value: "Lütfen Depo süresi seçiniz...");
  int selectedWarehouseTimeIndex = -1;
  WarehouseType selectedWarehouseType =
      WarehouseType(id: "-1", value: "Lütfen Depo Türü seçiniz...");
  int selectedWarehouseTypeIndex = -1;

  void getDistrict(String cityId) {
    districtList.clear();
    for (var i = 0; i < districts.length; i++) {
      if (cityId == districts[i].cityId) {
        districtList.add(districts[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          "İlan Vereceğiniz Depo Kriterleri",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setStateIn) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lütfen il seçiniz",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                itemCount: cities.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedCity = cities[index];
                                      selectedDistrict = DistrictModel(
                                          districtName: "Lütfen İlçe Seçiniz",
                                          cityId: "-1",
                                          districtId: "-1");
                                      selectedDistrictIndex = -1;
                                      selectedIndex = index;
                                      setState(() {
                                        setStateIn(() {});
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: selectedIndex == index
                                                ? Colors.red
                                                : Colors.grey),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            cities[index].cityName,
                                            style: TextStyle(
                                              color: selectedIndex == index
                                                  ? Colors.red
                                                  : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedCity.cityName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              getDistrict(selectedCity.cityId);
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setStateIn) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lütfen ilçe seçiniz",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                itemCount: districtList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedDistrict = districtList[index];
                                      selectedDistrictIndex = index;
                                      setState(() {
                                        setStateIn(() {});
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color:
                                                selectedDistrictIndex == index
                                                    ? Colors.red
                                                    : Colors.grey),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            districtList[index].districtName,
                                            style: TextStyle(
                                              color:
                                                  selectedDistrictIndex == index
                                                      ? Colors.red
                                                      : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDistrict.districtName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              getDistrict(selectedCity.cityId);
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setStateIn) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lütfen Ürün Tipi seçiniz",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                itemCount: productTypes.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedProductType = productTypes[index];
                                      selectedProductTypeIndex = index;
                                      setState(() {
                                        setStateIn(() {});
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: selectedProductTypeIndex ==
                                                    index
                                                ? Colors.red
                                                : Colors.grey),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            productTypes[index].typeName,
                                            style: TextStyle(
                                              color: selectedProductTypeIndex ==
                                                      index
                                                  ? Colors.red
                                                  : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedProductType.typeName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setStateIn) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lütfen Depo Süresi seçiniz",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                itemCount: warehouseTimeList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedWarehouseTime =
                                          warehouseTimeList[index];
                                      selectedWarehouseTimeIndex = index;
                                      setState(() {
                                        setStateIn(() {});
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: selectedWarehouseTimeIndex ==
                                                    index
                                                ? Colors.red
                                                : Colors.grey),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            warehouseTimeList[index].value,
                                            style: TextStyle(
                                              color:
                                                  selectedWarehouseTimeIndex ==
                                                          index
                                                      ? Colors.red
                                                      : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedWarehouseTime.value,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setStateIn) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lütfen Depo Türü seçiniz",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                itemCount: warehouseType.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedWarehouseType =
                                          warehouseType[index];
                                      selectedWarehouseTypeIndex = index;
                                      setState(() {
                                        setStateIn(() {});
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: selectedWarehouseTypeIndex ==
                                                    index
                                                ? Colors.red
                                                : Colors.grey),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            warehouseType[index].value,
                                            style: TextStyle(
                                              color:
                                                  selectedWarehouseTypeIndex ==
                                                          index
                                                      ? Colors.red
                                                      : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedWarehouseType.value,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anasayfa(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                "Kaydet",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CityModel {
  String cityId;
  String cityName;

  CityModel({
    required this.cityId,
    required this.cityName,
  });
}

class DistrictModel {
  String cityId;
  String districtId;
  String districtName;

  DistrictModel({
    required this.districtName,
    required this.cityId,
    required this.districtId,
  });
}

class ProductType {
  String typeName;
  String id;

  ProductType({
    required this.id,
    required this.typeName,
  });
}

class WarehouseTime {
  String id;
  String value;

  WarehouseTime({
    required this.id,
    required this.value,
  });
}

class WarehouseType {
  String id;
  String value;

  WarehouseType({
    required this.id,
    required this.value,
  });
}
