import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holadoc/views/widgets/rectangle_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Masuk",
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
                text: "Masuk",
                onPressed: () => Get.offAllNamed("/main"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
