import 'package:flutter/material.dart';

import '../component/BottomNavigaton.dart';

class Riwayatpage extends StatefulWidget {
  const Riwayatpage({super.key});

  @override
  State<Riwayatpage> createState() => _RiwayatpageState();
}

class _RiwayatpageState extends State<Riwayatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnavigation(currentIndex: 1),
      appBar: AppBar(
        title: const Text("Riwayat"),
      ),
    );
  }
}
