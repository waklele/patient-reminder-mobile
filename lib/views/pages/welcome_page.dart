import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rectangle_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RectangleButton(
              text: "Daftar",
              onPressed: () => Get.toNamed("/sign-up"),
            ),
            RectangleButton(
              text: "Masuk",
              onPressed: () => Get.toNamed("/sign-in"),
            ),
          ],
        ),
      ),
    );
  }
}
