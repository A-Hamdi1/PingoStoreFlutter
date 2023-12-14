import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pingostore/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/repositories/authentification/authentification_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {
  /// Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// GetX Local Storage
  await GetStorage.init();

  // Todo: Init Payment Methods

  /// Await Native Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo: Initialize Firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
        (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );



  // Todo: Initialize Authentication
  // Load all the Material Design / Themes / Localizations / Bindings

  runApp(const App());
}
