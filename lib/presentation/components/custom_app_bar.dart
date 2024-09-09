import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.teal[300],
          ),
        ),
        Positioned(
          top: 40,
          left: 16,
          right: 16,
          child: Row(
            children: [
              const Icon(Icons.arrow_back),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliver To',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Near Pusat Layanan',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.bookmark),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -30,
          left: 16,
          right: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What shall we deliver?',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
