import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rectangle_button.dart';

class SignUpFinishPage extends StatelessWidget {
  const SignUpFinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RectangleButton(
              text: "Masuk ke Beranda",
              backgroundColor: Colors.white,
              textColor: Theme.of(context).primaryColor,
              onPressed: () => Get.offAllNamed("/home"),
            ),
          ],
        ),
      ),
    );
  }
}
