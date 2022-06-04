import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:samarthdas_app/pages/about/institution.dart';
import 'package:samarthdas_app/pages/about/parampara.dart';
import 'package:samarthdas_app/pages/bheemrupi/bheemrupi.dart';
import 'package:samarthdas_app/pages/dasbodh/dasbodh.dart';
import 'package:samarthdas_app/pages/explore.dart';
import 'package:samarthdas_app/pages/homePage.dart';
import 'package:samarthdas_app/pages/manobodh/manobodh.dart';
import 'package:samarthdas_app/pages/media.dart';
import 'package:samarthdas_app/pages/splashScreen.dart';
import 'package:samarthdas_app/pages/upasana/upasana.dart';
// import 'package:samarthdas_app/secret.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //   apiKey: SecretCredentials.API_KEY,
      //   appId: SecretCredentials.APP_ID,
      //   messagingSenderId: SecretCredentials.MESSENGER_ID,
      //   projectId: SecretCredentials.PROJECT_ID,
      //   measurementId: SecretCredentials.MESSENGER_ID,
      //   storageBucket: SecretCredentials.STORAGE_BUCKET,
      //   authDomain: SecretCredentials.AUTH_DOMAIN
      // ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/Dasbodh': (context) => const Dasbodh(),
        '/Bheemrupi': (context) => const Bheemrupi(),
        '/Manobodh': (context) => const Manobodh(),
        '/Upasana' : (context) => const UpasanaContent(),
        '/media': (context) => Media(),
        '/parampara': (context) => const Parampara(
              showAppBar: false,
            ),
        '/institution': (context) => const Institution(
              showAppBar: false,
            ),
        '/explore': (context) => Explore(),
      },
    );
  }
}
