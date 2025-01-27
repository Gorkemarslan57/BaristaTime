import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: colors['onPrimary'],
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
      bottomNavigationBar: const BottomMenu(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'BaristeTime',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: colors['onSurface'],
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                '2019 yılında butik bir kafede başladığı yolculuğunu, 2025 itibarıyla kaliteli ve uygun fiyatlı kahve deneyimini geniş kitlelere ulaştıran bir markaya dönüştürmüştür. Türk kahvesinin geleneksel lezzetini, dünya kahvelerinin çeşitliliğiyle harmanlayarak, kahveseverlere her zaman taze ve yüksek kaliteli içecekler sunmayı hedefliyoruz.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colors['onSurface'],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'Vizyonumuz',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: colors['onSurface'],
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Kaliteli kahve anlayışını yaymak ve sektördeki lider marka olmaktır.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colors['onSurface'],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'Misyonumuz',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: colors['onSurface'],
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Türk kahvesinden dünya kahvelerine kadar geniş yelpazemizle, her zaman taze, lezzetli ve uygun fiyatlı kahve deneyimi sunarak kahveseverleri memnun etmektir.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colors['onSurface'],
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
