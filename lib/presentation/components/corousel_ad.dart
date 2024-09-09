import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CorouselAd extends StatelessWidget {
  const CorouselAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: CarouselView(
        shape: Border.all(),
        scrollDirection: Axis.horizontal,
        itemSnapping: true,
        itemExtent: MediaQuery.of(context).size.width * 0.9,
        shrinkExtent: 300,
        padding: const EdgeInsets.only(left: 12),
        children: List<Widget>.generate(
          5,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Pesan Sekarang',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(8),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.red,
                ),
              ),
              const Gap(8),
              Text(
                'HematSolaria Disc',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Gap(4),
              const Row(
                children: [
                  Text(
                    'Ad',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Solaria')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
