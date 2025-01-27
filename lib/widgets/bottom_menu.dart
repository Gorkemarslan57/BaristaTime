import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
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
            icon: Icon(
              CupertinoIcons.home,
              color: colors['onSurface'],
            ),
          ),
          IconButton(
            onPressed: () {
              context.push("/cart");
            },
            icon: Icon(
              CupertinoIcons.cart,
              color: colors['onSurface'],
            ),
          ),
          IconButton(
            onPressed: () {
            context.go("/profile");
            },
            icon: Icon(
              CupertinoIcons.person,
              color: colors['onSurface'],
            ),
          ),

          IconButton(
            onPressed: () {
            context.push("/voice");
            },
            icon: Icon(
              Icons.android,
              color: colors['onSurface'],
            ),
          ),
        ],
      ),
    );
  }
}
