import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({
    super.key,
    // required this.title,
    // required this.description,
    // required this.Price,
    // required this.Diskon,
    // required this.Image,
  });

  final String title = "";
  final String description = "";
  final double Price = 0;
  final String Diskon = "";
  final String Image = "";

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1E1E2C),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                widget.Image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF1E1E2C),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 40, right: 40, left: 40, bottom: 20),
              decoration: const BoxDecoration(
                color: Color(0XFF1E1E2C),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "nama " + widget.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Text("Deskripsi " + widget.description,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTag("13%", "Alkohol"),
                      const SizedBox(width: 19),
                      _buildTag("13%", "Alkohol"),
                      const SizedBox(width: 19),
                      _buildTag("13%", "Alkohol"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0XFF15151F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Rp 80 ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Price x Drink",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0XFF15151F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Rp 20 ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Text("Total Order",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.local_drink_outlined, color: Colors.grey),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Total Drinks",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text("Rp 80",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Total Price",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 20,
              top: MediaQuery.of(context).size.height * 0.32,
              child: Container(
                width: 90,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0XFF3B384D),
                  borderRadius: BorderRadius.circular(20),
                ),
                // ignore: prefer_const_constructors
                child: Column(
                  children: [
                    IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFF1E1E2C)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 13),
                        decoration: BoxDecoration(
                          color: const Color(0XFF7B7794),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    IconButton(
                        padding: const EdgeInsets.all(8),
                        style: IconButton.styleFrom(
                          backgroundColor: const Color(0xFF1E1E2C),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          color: Colors.white,
                          Icons.remove,
                        )),
                  ],
                ),
              )),
          Positioned(
              right: 20,
              top: MediaQuery.of(context).size.height * 0.82,
              child: Container(
                padding: const EdgeInsets.only(top: 30),
                width: 90,
                decoration: BoxDecoration(
                  color: const Color(0XFF3B384D),
                  borderRadius: BorderRadius.circular(20),
                ),
                // ignore: prefer_const_constructors
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: const Icon(Icons.payment, color: Colors.orange)),
                    ElevatedButton(
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Pay",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  // Helper method to avoid repetition
  Widget _buildTag(String value, String label) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: const Color(0XFF1E1E2C),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
