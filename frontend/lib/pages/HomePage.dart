import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/BottomNavigaton.dart';
import 'dart:ui';

import 'Details/OrderPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottomnavigation(
        currentIndex: 0,
      ),
      backgroundColor: const Color(0XFF1E1E2C),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "To Night",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        "Monday, November 25",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        side: const BorderSide(width: 1, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        "Promotion",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        side: const BorderSide(width: 1, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        "Free Drink",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        side: const BorderSide(width: 1, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        "Happy Hour",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-1.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-2.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-3.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-4.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-5.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-6.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConDrink(
                      title: "Nama Drink",
                      description: "Deskripsi Drink",
                      price: 30000,
                      diskon: "Diskon",
                      image: "Images/DrinkWater/Jus-7.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ConDrink extends StatelessWidget {
  const ConDrink({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.diskon,
  });

  final String image;
  final String title;
  final String description;
  final double price;
  final String diskon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => Orderpage(
                // title: title,
                // description: description,
                // Diskon: diskon,
                // Image: image,
                // Price: price,
                ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.height * 0.59,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          left: 40,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
                color: Colors.black.withOpacity(0.5),
              ),
              child: const SizedBox(
                height: 50,
                width: 263,
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 30,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama Drink",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Deskripsi",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          top: 30,
          left: 30,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFF1E1E2C),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "30 %",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Discount",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
