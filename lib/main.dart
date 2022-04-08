import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:samarthdas_app/pages/about/About.dart';
import 'package:samarthdas_app/pages/bheemrupi/bheemrupi.dart';
import 'package:samarthdas_app/pages/dasbodh/dasbodh.dart';
import 'package:samarthdas_app/pages/homePage.dart';
import 'package:samarthdas_app/pages/manobodh/manobodh.dart';
import 'package:samarthdas_app/pages/media.dart';
import 'package:samarthdas_app/pages/splashScreen.dart';
import 'package:samarthdas_app/pages/upasana.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/Dasbodh': (context) => const Dasbodh(),
        '/Bheemrupi': (context) => const Bheemrupi(),
        '/Manobodh': (context) => Manobodh(),
        '/media': (context) => Media(),
      },
    );
  }
}
