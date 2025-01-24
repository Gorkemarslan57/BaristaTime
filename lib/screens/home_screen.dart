import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kahve Menüsü'),
        centerTitle: true,
        backgroundColor: colors["primary"],
        titleTextStyle: TextStyle(
          color: colors["onPrimary"],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: colors["onPrimary"],
        ),
      ),
      body: CoffeeMenuCard(),
      bottomNavigationBar: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: colors[
                    "onSurface"], // Renk düzeninizdeki "onPrimary" rengi kullanıldı
                onPressed: () {
                  context.go("/home");
                },
                icon: Icon(
                  CupertinoIcons.home,
                ),
              ),
              IconButton(
                color: colors[
                    "success"], // Renk düzeninizdeki "success" rengi kullanıldı
                onPressed: () {
                  context.go("/cart");
                },
                icon: Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                color: colors[
                    "onSurface"], // Renk düzeninizdeki "onSurface" rengi kullanıldı
                onPressed: () {
                  context.go("/about");
                },
                icon: Icon(
                  CupertinoIcons.info,
                ),
              ),
            ],
          )),
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
      price: 70,
      imageUrl: 'assets/images/espresso.jpg',
    ),
    CoffeeMenuItem(
      name: 'Cappuccino',
      description: 'Espresso, buharla ısıtılmış süt ve süt köpüğü',
      price: 70,
      imageUrl: 'assets/images/cappuccino.jpg',
    ),
    CoffeeMenuItem(
      name: 'Latte',
      description: 'Espresso ve kadifemsi süt köpüğü',
      price: 70,
      imageUrl: 'assets/images/latte.jpg',
    ),
    CoffeeMenuItem(
      name: 'Americano',
      description: 'Espresso ve sıcak su ile hazırlanır',
      price: 70,
      imageUrl: 'assets/images/americano.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Mocha',
      description: 'Çikolata, espresso ve süt karışımı',
      price: 70,
      imageUrl: 'assets/images/mocha.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Flat White',
      description: 'Espresso ve ince köpüklü süt',
      price: 70,
      imageUrl: 'assets/images/flatwhite.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Macchiato',
      description: 'Espresso üzerine süt köpüğü',
      price: 70,
      imageUrl: 'assets/images/macchiato.jpeg',
    ),
    CoffeeMenuItem(
      name: 'Türk Kahvesi',
      description: 'Klasik Türk kahvesi, cezvede pişirilir',
      price: 50,
      imageUrl: 'assets/images/turk_kahvesi.jpg',
    ),
    CoffeeMenuItem(
      name: 'Affogato',
      description: 'Espresso üzerine dondurma',
      price: 80,
      imageUrl: 'assets/images/affogato.jpg',
    ),
    CoffeeMenuItem(
      name: 'Irish Coffee',
      description: 'Kahve, viski ve krema karışımı',
      price: 90,
      imageUrl: 'assets/images/irish_coffee.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Aynı satırda 2 kahve göster
        crossAxisSpacing: 8, // Sütunlar arası boşluk
        mainAxisSpacing: 8, // Satırlar arası boşluk
        childAspectRatio: 0.9, // Kartların boyut oranı (en/boy)
      ),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () {
              // Tıklama işlevi buraya eklenebilir
            },
            child: Column(
              children: [
                Container(
                  height: 250, // Görsellerin yüksekliği azaltıldı
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '₺${item.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 12,
                          color: colors["success"],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 15,
                          color: colors["onSurface"],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors["success"],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8), // Küçük buton
                        ),
                        child: Text(
                          'Sipariş Ver',
                          style: TextStyle(
                            fontSize: 12,
                            color: colors["onPrimary"],
                          ),
                        ),
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
