import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';
import 'pages/OrderPage.dart';
import 'pages/RegistrasiPage.dart';
import 'pages/RiwayatPage.dart';
import 'pages/SearchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
            transition: Transition.fadeIn,
            name: "/",
            page: () => const Homepage()),
        GetPage(
            transition: Transition.fadeIn,
            name: "/registrasi",
            page: () => const RegistrasiPage()),
        GetPage(
            transition: Transition.fadeIn,
            name: "/login",
            page: () => const LoginPage()),
        GetPage(
            transition: Transition.fadeIn,
            name: "/Order",
            page: () => const Orderpage()),
        GetPage(
            transition: Transition.fadeIn,
            name: "/riwayat",
            page: () => const Riwayatpage()),
        GetPage(
            transition: Transition.fadeIn,
            name: "/search",
            page: () => const Searchpage()),
      ],
    );
  }
}
