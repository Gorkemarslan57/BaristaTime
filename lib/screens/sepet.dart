import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';

class Sepet extends StatelessWidget {
  const Sepet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepet'),
        backgroundColor: colors["primary"],
        titleTextStyle: TextStyle(
          color: colors["onPrimary"],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(child: Text('Sepet Sayfası İçeriği')),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: colors["onSurface"],
              onPressed: () {
                context.go("/home");
              },
              icon: Icon(CupertinoIcons.home),
            ),
            IconButton(
              color: colors["success"],
              onPressed: () {
                context.go("/cart");
              },
              icon: Icon(CupertinoIcons.cart),
            ),
            IconButton(
              color: colors["onSurface"],
              onPressed: () {
                context.go("/about");
              },
              icon: Icon(CupertinoIcons.info),
            ),
          ],
        ),
      ),
    );
  }
}
