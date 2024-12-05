import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoffeeMenuScreen(),
    );
  }
}

class CoffeeMenuScreen extends StatelessWidget {
  final List<Map<String, String>> coffeeMenu = [
    {'name': 'Espresso', 'price': '35₺'},
    {'name': 'Cappuccino', 'price': '80₺'},
    {'name': 'Latte', 'price': '80₺'},
    {'name': 'Mocha', 'price': '80₺'},
    {'name': 'Americano', 'price': '50₺'},
    {'name': 'Türk Kahvesi', 'price': '50₺'},
    {'name': 'Chai Tea Latte', 'price': '90₺'},
    {'name': 'White Chocolate Mocha', 'price': '100₺'},
    {'name': 'Macchiato', 'price': '85₺'},
    {'name': 'Flat White', 'price': '85₺'},
  ];

  CoffeeMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Kahve Menüsü'),
          backgroundColor: const Color(0xFF6F4E37)),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF6F4E37)),
              child: Text(
                'Kahve Diyarı',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.coffee, color: Color(0xFF8D6E63)),
              title: Text('Kahveler'),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Color(0xFF8D6E63)),
              title: Text('Hakkında'),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFFFF8E1),
        child: ListView(
          children: coffeeMenu.map((coffee) {
            return Card(
              color: const Color(0xFFFFE0B2),
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coffee['name']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6F4E37),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            coffee['price']!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF3E2723),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.coffee, color: Color(0xFF6F4E37)),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
