import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key, required this.currentIndex});
  final int currentIndex;
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Get.toNamed('/');
        break;
      case 1:
        Get.toNamed('/riwayat');
        break;
      case 2:
        Get.toNamed('/search');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0XFF0D0D13),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: SalomonBottomBar(
          margin: const EdgeInsets.all(10),
          itemShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // selectedItemColor: Appcolor.Primary,
          currentIndex: currentIndex,
          onTap: _onItemTapped,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.grey),
                )),
            SalomonBottomBarItem(
                icon: const Icon(Icons.history, color: Colors.grey),
                title: const Text(
                  'Riwayat',
                  style: TextStyle(color: Colors.grey),
                )),
            SalomonBottomBarItem(
                icon: const Icon(Icons.search, color: Colors.grey),
                title: const Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                )),
          ]),
    );
  }
}
