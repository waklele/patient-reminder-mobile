import 'package:get/route_manager.dart';
import 'package:holadoc/views/pages/home_page.dart';
import 'package:holadoc/views/pages/sign_in_page.dart';
import 'package:holadoc/views/pages/sign_up_page.dart';

final getPages = [
  GetPage(
    name: '/',
    page: () => const SignInPage(),
  ),
  GetPage(
    name: '/sign-in',
    page: () => const SignInPage(),
  ),
  GetPage(
    name: '/sign-up',
    page: () => const SignUpPage(),
  ),
  GetPage(
    name: '/home',
    page: () => const HomePage(),
  ),
];
