import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Word'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World',style: TextStyle(fontSize: 24),
              ),
              const Text('Nama: Muhammad Ramadhani Pasulleri',style: TextStyle(fontSize: 24),
              ),
              const Text('Nim: 220605110147',style: TextStyle(fontSize: 24),
              ),
              const Text('Alamat: Jl Mojoasri 141, Junrejo, Mojorejo, Kota Batu',style: TextStyle(fontSize: 24),
              ),
              const Text('No WA: 0895342586921',style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
