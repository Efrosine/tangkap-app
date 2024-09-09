import 'package:flutter/material.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(
          8,
          (index) => Container(
            color: Colors.blue,
            child: Center(
              child: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
