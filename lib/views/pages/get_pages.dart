import 'package:get/route_manager.dart';
import 'main_page.dart';
import 'sign_in_page.dart';
import 'sign_up_finish_page.dart';
import 'sign_up_page.dart';
import 'welcome_page.dart';
import 'create_opd_page.dart';

final getPages = [
  GetPage(
    name: '/',
    page: () => const WelcomePage(),
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
    name: '/sign-up-finish',
    page: () => const SignUpFinishPage(),
  ),
  GetPage(
    name: '/main',
    page: () => const MainPage(),
  ),
  GetPage(
    name: '/create-opd',
    page: () => const CreateOpdPage(),
  ),
];
