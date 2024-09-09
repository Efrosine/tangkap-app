import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Card(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox.square(dimension: 100, child: Container(color: Colors.red)),
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
        separatorBuilder: (context, index) => const Gap(8),
        itemCount: 6);
  }
}
