import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rectangle_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: ListView(),
              ),
              RectangleButton(
                text: "Selesai",
                onPressed: () => Get.offAllNamed("/sign-up-finish"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
