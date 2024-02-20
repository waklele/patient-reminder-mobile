import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rectangle_button.dart';

class SignUpFinishPage extends StatelessWidget {
  const SignUpFinishPage({super.key});
  static const textStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
  static const padding = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.greenAccent.shade400,
              margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.green.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: const Offset(0, 10)),
                  ],
                ),
                height: 164.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.yellow,
                        size: 54.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Akun berhasil dibuat',
                        style: textStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            RectangleButton(
              text: "Masuk ke Beranda",
              backgroundColor: Colors.white,
              textColor: Theme.of(context).primaryColor,
              onPressed: () => Get.offAllNamed("/main"),
            ),
          ],
        ),
      ),
    );
  }
}
