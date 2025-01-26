import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';



class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(
          color: colors['onPrimary']
        ),
        centerTitle: true,
        title: const Text('Sepetim'),
        backgroundColor: colors["primary"],
        titleTextStyle: TextStyle(
          color: colors["onPrimary"],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
