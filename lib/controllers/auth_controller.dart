import 'package:get/get.dart';

class AuthController extends GetxController {
  final isSigningIn = false.obs;
  final isSigningUp = false.obs;

  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    try {
      isSigningIn.toggle();
    } catch (e) {
      print(e);
    } finally {
      isSigningIn.toggle();
    }
  }

  Future<void> signUp({
    required String username,
    required String password,
  }) async {
    try {
      isSigningUp.toggle();
    } catch (e) {
      print(e);
    } finally {
      isSigningUp.toggle();
    }
  }
}
