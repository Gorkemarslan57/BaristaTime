import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              context.go("/home");
            },
            icon: const Icon(
              CupertinoIcons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              context.push("/cart");
            },
            icon: const Icon(
              CupertinoIcons.cart,
            ),
          ),
          IconButton(
            onPressed: () {
              context.push("/about");
            },
            icon: const Icon(
              CupertinoIcons.info_circle,
            ),
          ),
        ],
      ),
    );
  }
}