import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChipGoup extends StatelessWidget {
  const ChipGoup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 4,
      children: [
        Gap(10),
        Chip(avatar: CircleAvatar(backgroundColor: Colors.red), label: Text('Delivery')),
        Gap(10),
        Chip(avatar: CircleAvatar(backgroundColor: Colors.red), label: Text('Dine Out Deals')),
        Gap(10),
        Chip(avatar: CircleAvatar(backgroundColor: Colors.red), label: Text('Pickup')),
      ],
    );
  }
}
