import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> productImages = [
    'assets/images/affogato.jpg',
    'assets/images/Americano.jpeg',
    'assets/images/cappuccino.jpg',
    'assets/images/espresso.png',
    'assets/images/FlatWhite.png',
    'assets/images/irish_coffee.jpg',
    'assets/images/latte.png',
    'assets/images/Macchiato.png',
    'assets/images/Mocha.png',
    'assets/images/turk_kahvesi.png',
    'assets/images/ChaiTeaLatte.png',
    'assets/images/Frappucino.png',
    'assets/images/sıcak_cikolata.png',
  ];

  final List<String> productNames = [
    'Affogato',
    'Americano',
    'Cappuccino',
    'Espresso',
    'Flat White',
    'İrish Coffee',
    'Latte',
    'Macchiato',
    'Mocha',
    'Türk Kahvesi',
    'Chai Tea Latte',
    'Frappucino',
    'Sıcak Çikolata',
  ];

  final double productPrice = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BaristaTime',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Provider.of<ThemeProvider>(context).isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
              color: Theme.of(context).colorScheme.onSecondary,
              size: 34,
            ),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
       leading: Builder(
  builder: (context) => IconButton(
    icon: Icon(
      Icons.menu,
      color: Theme.of(context).colorScheme.onSecondary,
      size: 24,
    ),
    onPressed: () {
      Scaffold.of(context).openDrawer();
    },
  ),
),
        backgroundColor: colors['onSurface'],
        centerTitle: true,
      ),
      backgroundColor: colors['surface'],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Görkem Arslan'),
              accountEmail: const Text('gorkemarslan942@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  CupertinoIcons.person,
                  color: colors['primary'],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.info_circle),
              title: const Text('Hakkında'),
              onTap: () {
                context.push("/about");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.moon),
              title: const Text('Gece/Gündüz Teması'),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: productImages.length,
              itemBuilder: (context, index) => Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
                        child: Image.asset(
                          productImages[index],
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
                            productNames[index],
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 2,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '₺${productPrice.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 8),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart, size: 18),
                            label: const Text('Sepete Ekle'),
                            style: FilledButton.styleFrom(
                              minimumSize: const Size(double.infinity, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12), 
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
