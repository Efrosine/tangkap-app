import 'package:flutter/material.dart';
import 'ads.dart';

class AdsData extends ChangeNotifier {
  final List<Ads> adsMenu = [
    Ads(
      name: 'Pesan Sekarang',
      image: 'assets/images/solaria.jpeg', // Ensure this image is available in your assets folder
      description: 'Hemat Solaria Disc 50%',
      from: 'Ad - Solaria',
    ),
    Ads(
      name: 'Pesan Sekarang',
      image: 'assets/images/solaria.jpeg',
      description: 'Hemat Solaria Disc 50%',
      from: 'Ad - Solaria',
    ),
    Ads(
      name: 'Pesan Sekarang',
      image: 'assets/images/solaria.jpeg',
      description: 'Hemat Solaria Disc 50%',
      from: 'Ad - Solaria',
    ),
    Ads(
      name: 'Pesan Sekarang',
      image: 'assets/images/solaria.jpeg',
      description: 'Hemat Solaria Disc 50%',
      from: 'Ad - Solaria',
    ),
  ];
}
