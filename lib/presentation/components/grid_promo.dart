import 'package:flutter/material.dart';

class GridPromo extends StatelessWidget {
  const GridPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imagePaths1 = [
      'assets/images/discount1.jpg',
      'assets/images/discount2.jpg',
      'assets/images/discount3.jpg',
      'assets/images/discount4.jpg',
      'assets/images/discount5.jpg',
    ];
    return SizedBox(
      height: 210,
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        mainAxisSpacing: 8,
        childAspectRatio: 4.5 / 3,
        children: List.generate(
          5,
          (index) => Card(
            child: Column(
              children: [
                SizedBox.square(
                  dimension: 120,
                  child: Image.asset(
                    imagePaths1[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo',
                        style: TextStyle(color: Colors.yellow[900]),
                      ),
                      const Text(
                        'Ini Nama Makanan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('From 24 min 2KM'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
