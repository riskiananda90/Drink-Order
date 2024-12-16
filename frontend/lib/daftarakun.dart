import 'package:flutter/material.dart';

void main() {
  runApp(const MainMenuApp());
}

// Main Menu App
class MainMenuApp extends StatelessWidget {
  const MainMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterApp()),
                );
              },
              child: const Text('Counter App'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DrinkOrderApp()),
                );
              },
              child: const Text('Drink Order App'),
            ),
          ],
        ),
      ),
    );
  }
}

// Counter App
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Drink Order App
class DrinkOrderApp extends StatelessWidget {
  const DrinkOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DrinkOrderScreen(),
    );
  }
}

class DrinkOrderScreen extends StatefulWidget {
  const DrinkOrderScreen({super.key});

  @override
  State<DrinkOrderScreen> createState() => _DrinkOrderScreenState();
}

class _DrinkOrderScreenState extends State<DrinkOrderScreen> {
  int currentPage = 0;
  List<Map<String, dynamic>> drinks = [
    {'name': 'Blackberry', 'subtitle': 'Fresh Drink'},
    {'name': 'Menta Cocktail', 'subtitle': 'Fresh Drink'},
  ];
  List<Map<String, dynamic>> orders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drink Order App'),
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
          onTap: () {
            setState(() {
              orders.add(drinks[index]);
              currentPage = 1;
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
                subtitle: Text(orders[index]['subtitle']),
              );
            },
          );
  }
}
