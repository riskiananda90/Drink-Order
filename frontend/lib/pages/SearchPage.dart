import 'package:flutter/material.dart';

import '../component/BottomNavigaton.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnavigation(currentIndex: 2),
      appBar: AppBar(
        title: const Text("Search"),
      ),
    );
  }
}
