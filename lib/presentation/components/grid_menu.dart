import 'package:flutter/material.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      'assets/images/grid1.png',
      'assets/images/grid2.png',
      'assets/images/grid3.png',
      'assets/images/grid4.png',
      'assets/images/grid5.png',
      'assets/images/grid6.png',
      'assets/images/grid7.png',
      'assets/images/grid8.png',
    ];

    return SizedBox(
      height: 180,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(8,(index) => Container(
            child: Center(
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
