import 'package:flutter/material.dart';

class GridPromo extends StatelessWidget {
  const GridPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        mainAxisSpacing: 8,
        childAspectRatio: 4.5 / 3,
        children: List.generate(
          4,
          (index) => Card(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(color: Colors.red),
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
