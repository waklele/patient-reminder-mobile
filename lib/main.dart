import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holadoc/services/api_service.dart';
import 'package:holadoc/views/pages/sign_in_page.dart';
import 'package:holadoc/views/pages/welcome_page.dart';
import 'views/pages/get_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Service
  Get.put(ApiService());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF376BF1)),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
      getPages: getPages,
      navigatorKey: Get.key,
    );
  }
}
