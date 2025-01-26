import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:flutter_app/core/themes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> productImages = [
    'assets/images/affogato.jpg',
    'assets/images/Americano.jpeg',
    'assets/images/cappuccino.jpg',
    'assets/images/espresso.jpg',
    'assets/images/FlatWhite.jpeg',
    'assets/images/irish_coffee.jpg',
    'assets/images/latte.jpg',
    'assets/images/Macchiato.jpeg',
    'assets/images/Mocha.jpeg',
    'assets/images/turk_kahvesi.jpg',
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
  ];

  final double productPrice = 80; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BaristaTime',
         style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
        ),
        centerTitle: true,
      
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
                            overflow: TextOverflow.ellipsis,
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
