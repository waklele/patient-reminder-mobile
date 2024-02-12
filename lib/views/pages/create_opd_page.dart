import 'package:flutter/material.dart';
import 'package:holadoc/views/widgets/rectangle_button.dart';

class CreateOpdPage extends StatelessWidget {
  const CreateOpdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input OPD",
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(),
              ),
              RectangleButton(
                text: "Selesai",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
