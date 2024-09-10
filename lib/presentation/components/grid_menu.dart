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
      height: 160,
      child: GridView.builder(
        padding: const EdgeInsets.only(left: 8),
        itemCount: imagePaths.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
        ),
        itemBuilder: (context, index) => Image.asset(
          imagePaths[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
