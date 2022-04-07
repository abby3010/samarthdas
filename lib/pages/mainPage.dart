import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:samarthdas_app/pages/homePage.dart';
import 'package:samarthdas_app/pages/manobodh/manobodh.dart';
import 'package:samarthdas_app/pages/media.dart';
import 'package:samarthdas_app/pages/upasana.dart';
import 'about/About.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int page = 2;
  final screens = [
    const About(),
    const Upasana(),
    const HomePage(),
    const Manobodh(),
    Media()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[page],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
        ),
        child: CurvedNavigationBar(
          index: page,
          color: const Color.fromRGBO(247, 144, 35, 1),
          buttonBackgroundColor: const Color.fromRGBO(101, 35, 8, 1),
          backgroundColor: Colors.transparent,
          height: 60,
          items: <Widget>[
            ImageIcon(
              const AssetImage("assets/images/Group 12.png"),
              color: (page == 0)
                  ? const Color(0xFFF79023)
                  : const Color(0xFF652308),
            ),
            Icon(Icons.book,
                size: 30,
                color: (page == 1)
                    ? const Color(0xFFF79023)
                    : const Color(0xFF652308)),
            Icon(Icons.home,
                size: 30,
                color: (page == 2)
                    ? const Color(0xFFF79023)
                    : const Color(0xFF652308)),
            ImageIcon(
              const AssetImage("assets/images/Group 19.png"),
              color: (page == 3)
                  ? const Color(0xFFF79023)
                  : const Color(0xFF652308),
            ),
            Icon(Icons.camera_alt,
                size: 30,
                color: (page == 4)
                    ? const Color(0xFFF79023)
                    : const Color(0xFF652308)),
          ],
          onTap: (value) => setState(() {
            page = value;
          }),
        ),
      ),
    );
  }
}
