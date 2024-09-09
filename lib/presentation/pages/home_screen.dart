import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobiletoeri/presentation/components/chip_goup.dart';
import 'package:mobiletoeri/presentation/components/corousel_ad.dart';
import 'package:mobiletoeri/presentation/components/custom_app_bar.dart';
import 'package:mobiletoeri/presentation/components/grid_menu.dart';
import 'package:mobiletoeri/presentation/components/grid_promo.dart';
import 'package:mobiletoeri/presentation/components/list_menu.dart';
import 'package:mobiletoeri/presentation/components/reward_label.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const Chip(
          elevation: 4,
          label: Icon(Icons.shop),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const Gap(38),
              const ChipGoup(),
              const CorouselAd(),
              const RewardLabel(),
              const GridMenu(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('What`s Good for Breakfast'),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
                ],
              ),
              const GridPromo(),
              Text(
                'Popular Restourant',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const ListMenu()
            ],
          ),
        ));
  }
}
