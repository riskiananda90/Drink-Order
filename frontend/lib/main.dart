import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/Details/Details.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';
import 'pages/Details/OrderPage.dart';
import 'pages/RegistrasiPage.dart';
import 'pages/RiwayatPage.dart';
import 'pages/SearchPage.dart';

void main() {
  runApp(const DrinkOrderApp());
}

class DrinkOrderApp extends StatelessWidget {
  const DrinkOrderApp({super.key});
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
        GetPage(
            transition: Transition.fadeIn,
            name: "/Details",
            page: () => const Details()),
      ],
    );
  }
}

class DrinkOrderApp extends StatelessWidget {
  const DrinkOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DrinkOrderScreen(),
    );
  }
}

class DrinkOrderScreen extends StatefulWidget {
  const DrinkOrderScreen({super.key});

  @override
  _DrinkOrderScreenState createState() => _DrinkOrderScreenState();
}

class _DrinkOrderScreenState extends State<DrinkOrderScreen> {
  TextEditingController quantityController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    quantityController.text = '1';
  }

  @override
  void dispose() {
    quantityController.dispose();
    notesController.dispose();
    super.dispose();
  }

  int currentPage = 0; // 0 = Home, 1 = Orders
  List<Map<String, dynamic>> drinks = [
    {
      'name': 'Blackberry',
      'subtitle': 'Fresh Drink',
      'images': 'assets/images/drink3.jpg',
      'price': 8,
    },
    {
      'name': 'Menta Cocktail',
      'subtitle': 'Fresh Drink',
      'images': 'assets/images/drink1.jpg',
      'price': 10,
    },
    {
      'name': 'Mocha',
      'subtitle': 'Chocolate Coffe',
      'images': 'assets/images/mocha.jpg',
      'price': 15,
    },
    {
      'name': 'Cappucino',
      'subtitle': 'Coffe',
      'images': 'assets/images/cappuccino.jpg',
      'price': 10,
    },
    {
      'name': 'Macchiato Caramel',
      'subtitle': 'Milk Coffe',
      'images': 'assets/images/macchiato caramel.jpg',
      'price': 12,
    },
    {
      'name': 'Espresso',
      'subtitle': 'Pure Coffe',
      'images': 'assets/images/espresso.jpg',
      'price': 15,
    },
    {
      'name': 'Latte',
      'subtitle': 'Milk Coffe',
      'images': 'assets/images/latte.jpg',
      'price': 8,
    },
    {
      'name': 'Flat White',
      'subtitle': 'Coffe',
      'images': 'assets/images/flat_white.jpg',
      'price': 9,
    },
  ];

  List<Map<String, dynamic>> orders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drink Order App'),
        backgroundColor: Colors.black,
      ),
      body: currentPage == 0 ? _buildDrinkListPage() : _buildOrdersPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
        ],
      ),
    );
  }

  Widget _buildDrinkListPage() {
    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(drinks[index]['name']),
          subtitle: Text(drinks[index]['subtitle']),
          trailing: Text('\$${drinks[index]['price']}'),
          onTap: () {
            setState(() {
              orders.add({
                'name': drinks[index]['name'],
                'quantity': int.parse(quantityController.text),
              });
            });
          },
        );
      },
    );
  }

  Widget _buildOrdersPage() {
    return orders.isEmpty
        ? const Center(child: Text('No orders yet'))
        : ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(orders[index]['name']),
                subtitle: Text('Quantity: ${orders[index]['quantity']}'),
              );
            },
          );
  }
}
