import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final String name;
  final String nim;

  const FooterWidget({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blueGrey[800],
      child: Column(
        children: [
          Text(
            'Nama: $name',
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            'NIM: $nim',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}