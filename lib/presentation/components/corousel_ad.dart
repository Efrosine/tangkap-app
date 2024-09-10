import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CorouselAd extends StatelessWidget {
  const CorouselAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 260,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
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
                          Gap(4),
                          Text('Solaria')
                        ],
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const Gap(8),
            itemCount: 6)

        //  CarouselView(
        //   shape: Border.all(),
        //   scrollDirection: Axis.horizontal,
        //   itemSnapping: true,
        //   itemExtent: MediaQuery.of(context).size.width * 0.9,
        //   shrinkExtent: 300,
        //   padding: const EdgeInsets.only(left: 12),
        //   children: List<Widget>.generate(
        //     5,
        //     (index) =>
        //   ),
        // ),
        );
  }
}
