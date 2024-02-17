import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rectangle_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    const textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenWidth - padding * 2,
              height: screenWidth - padding * 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(padding)),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1649768518707-a5e513bd3fee?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenWidth * .1),
            const Text("Selamat Datang", style: textStyle),
            Text(
              "RS Batam",
              style: textStyle.copyWith(color: Colors.grey),
            ),
            SizedBox(height: screenWidth * .1),
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
