import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kahve Menüsü'),
        centerTitle: true,
        backgroundColor: colors["onSurface"]
      ),
      body: CoffeeMenuCard(),
    );
  }
}

class CoffeeMenuItem {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  CoffeeMenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class CoffeeMenuCard extends StatelessWidget {
  CoffeeMenuCard({super.key});

  final List<CoffeeMenuItem> menuItems = [
    CoffeeMenuItem(
      name: 'Espresso',
      description: 'Yoğun kafein ve zengin aroma',
      price: 30,
      imageUrl: 'assets/images/espresso.jpg',
    ),
    CoffeeMenuItem(
      name: 'Cappuccino',
      description: 'Espresso, buharla ısıtılmış süt ve süt köpüğü',
      price: 80,
      imageUrl: 'assets/images/cappuccino.jpg',
    ),
    CoffeeMenuItem(
      name: 'Latte',
      description: 'Espresso ve kadifemsi süt köpüğü',
      price: 50,
      imageUrl: 'assets/images/latte.jpg',
    ),
    CoffeeMenuItem(
      name: 'Americano',
      description: 'Espresso ve sıcak su ile hazırlanır',
      price: 40,
      imageUrl: 'assets/images/Americano.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Mocha',
      description: 'Çikolata, espresso ve süt karışımı',
      price: 60,
      imageUrl: 'assets/images/Mocha.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Flat White',
      description: 'Espresso ve ince köpüklü süt',
      price: 70,
      imageUrl: 'assets/images/FlatWhite.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Macchiato',
      description: 'Espresso üzerine süt köpüğü',
      price: 45,
      imageUrl: 'assets/images/Macchiato.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return Card(
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              // Tıklama işlevi buraya eklenebilir
            },
            child: Column(
              children: [
                Container(
                  height: 150, // Tüm resimler için aynı yükseklik
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.contain, // Fotoğrafın tamamını göster
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₺${item.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4CAF50),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          // Sipariş verme işlevi buraya eklenebilir
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4CAF50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Sipariş Ver'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
