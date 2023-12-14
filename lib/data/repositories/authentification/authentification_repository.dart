import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../features/authentification/screens/login/login.dart';
import '../../../features/authentification/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app Launch
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to Show Relevant Screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen()) // Redirect to Login Screen if not the first time
        : Get.offAll(const OnBoardingScreen()); // Redirect to OnBoarding Screen if it's the first time
  }

/*-------------------------- Email & Password sign-in -------------------------------*/

  /// [EmailAuthentication] - SignIn

  /// [EmailAuthentication] - REGISTER

  /// [ReAuthenticate] - ReAuthenticate User

  /// [EmailVerification] - MAIL VERIFICATION

  /// [EmailAuthentication] - FORGET PASSWORD

/*-------------------------- Federated identity & social sign-in -------------------------------*/

  /// [GoogleAuthentication] - GOOGLE

  ///[FacebookAuthentication] - FACEBOOK

/*-------------------------- sign-in social & identity Federated./end -------------------------------*/

  /// [LogoutUser] - Valid for any authentication.

  /// DELETE USER - Remove user Auth and Firestore Account.
}
