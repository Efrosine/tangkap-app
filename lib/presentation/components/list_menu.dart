import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imagePaths2 = [
      'assets/images/menu1.jpg',
      'assets/images/menu2.jpg',
      'assets/images/menu3.jpg',
      'assets/images/menu4.jpg',
      'assets/images/menu5.jpg',
      'assets/images/menu6.jpg',
      'assets/images/menu7.jpg',
      'assets/images/menu8.jpg',
    ];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      separatorBuilder: (context, index) => const Gap(8),
      itemBuilder: (context, index) => Card(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 120,
              width: 100,
              child: Image.asset(
                imagePaths2[index],
                fit: BoxFit.cover,
              )),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mie Gacoan',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Row(
                  children: [
                    Icon(Icons.star),
                    Text('4.5 (69)'),
                    Icon(Icons.currency_bitcoin),
                    Text('Noodles'),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.delivery_dining),
                    Text('From 24 min 2KM'),
                  ],
                ),
                const DefaultTextStyle(
                  style: TextStyle(fontSize: 8),
                  child: Wrap(
                    spacing: 4,
                    children: [
                      Chip(
                        padding: EdgeInsets.all(2),
                        label: Text('Rp. 15.000 off'),
                        avatar: CircleAvatar(
                          child: Icon(Icons.tag),
                        ),
                      ),
                      Chip(
                        padding: EdgeInsets.all(2),
                        label: Text('50% off'),
                        avatar: CircleAvatar(
                          child: Icon(Icons.tag),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
