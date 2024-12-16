import 'package:frontend/search-page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  // Data minuman dan gambar
  final Map<String, String> drinks = {
    'Cappuccino': 'assets/images/cappuccino.jpg',
    'Latte': 'assets/images/latte.jpg',
    'Espresso': 'assets/images/espresso.jpg',
    'Mocha': 'assets/images/mocha.jpg',
    'Macchiato': 'assets/images/macchiato caramel.jpg',
    'Flat White': 'assets/images/flat_white.jpg',
  };

  List<String> filteredDrinks = [];

  @override
  void initState() {
    super.initState();
    filteredDrinks = drinks.keys.toList(); // Default menampilkan semua minuman
  }

  void _filterDrinks(String query) {
    setState(() {
      // Filter minuman yang sesuai dengan query
      filteredDrinks = drinks.keys
          .where((drink) => drink.toLowerCase().contains(query.toLowerCase()))
          .toList();

      // Jika minuman tidak ditemukan dan query tidak kosong, tambahkan opsi "Add New Drink"
      if (query.isNotEmpty &&
          !drinks.keys
              .any((drink) => drink.toLowerCase() == query.toLowerCase())) {
        filteredDrinks.add('Add "$query"');
      }
    });
  }

  void _addNewDrink(String drinkName) {
    setState(() {
      drinks[drinkName] = 'assets/images/drink1.jpg'; // Gambar default
      filteredDrinks = drinks.keys.toList();
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$drinkName has been added!'),
        backgroundColor: grey_medium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Drinks'),
        backgroundColor: grey_medium,
      ),
      body: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter drink name',
                prefixIcon: const Icon(Icons.search, color: grey_light),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: _filterDrinks,
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView.builder(
                itemCount: filteredDrinks.length,
                itemBuilder: (context, index) {
                  final drink = filteredDrinks[index];
                  return ListTile(
                    title: Text(
                      drink,
                      style: const TextStyle(color: black),
                    ),
                    leading: const Icon(Icons.local_drink, color: grey_light),
                    onTap: () {
                      if (drink.startsWith('Add "')) {
                        // Tambahkan minuman baru
                        final newDrink =
                            drink.replaceAll('Add "', '').replaceAll('"', '');
                        _addNewDrink(newDrink);
                      } else {
                        // Navigasi ke halaman detail
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DrinkDetailPage(
                              name: drink,
                              image: drinks[drink] ?? 'assets/images/latte.jpg',
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman detail untuk menampilkan nama dan gambar minuman
class DrinkDetailPage extends StatelessWidget {
  final String name;
  final String image;

  const DrinkDetailPage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          backgroundColor: grey_medium,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.broken_image,
                size: 200,
                color: Colors.grey,
              );
            },
          )
        ])));
  }
}
