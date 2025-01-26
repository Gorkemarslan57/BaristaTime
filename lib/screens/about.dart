import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(
          color: colors['onPrimary']
        ),
        centerTitle: true,
        title: const Text('Hakkında'),
        backgroundColor: colors["primary"],
        titleTextStyle: TextStyle(
          color: colors["onPrimary"],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
       bottomNavigationBar: const BottomMenu()
    );
  }
}

