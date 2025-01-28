import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_app/core/themes.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["surface"],
      body: SizedBox.expand(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: 500,
                height: 500,
                child: Image.asset(
                  'assets/images/BaristaTime.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            InkWell(
              onTap: () => context.go("/login"),
              child: SizedBox(
                width: 300,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/loading.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
