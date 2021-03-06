import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samarthdas_app/pages/mainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Shri Govind Maharaj Muth\nJukkal, Telangana",
                textAlign: TextAlign.center,
                style: GoogleFonts.salsa(
                  color: const Color.fromRGBO(101, 35, 8, 1),
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
