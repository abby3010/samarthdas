import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Upasana extends StatefulWidget {
  const Upasana({Key? key}) : super(key: key);

  @override
  State<Upasana> createState() => _UpasanaState();
}

class _UpasanaState extends State<Upasana> {
  final List<String> upasanaName = [
    "Upasana",
    "Bheemrupi",
    "Dasbodh",
    "Manobodh"
  ];
  final List<String> upasanaImages = [
    "assets/images/Group 9.png",
    "assets/images/Group 8.png",
    "assets/images/Group 10.png",
    "assets/images/Group 22.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 144, 35, 1),
        title: Container(
          padding: const EdgeInsets.only(right: 1, left: 0),
          child: Center(
            child: Text(
              "Upasana",
              style: GoogleFonts.salsa(
                color: const Color.fromRGBO(101, 35, 8, 1),
                fontSize: 26,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/" + upasanaName[index]);
            },
            child: Container(
              width: 382,
              height: 126,
              margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF703216),
                      Color(0xFF923E18),
                    ],
                  ),
                  // color: Color.fromRGBO(146, 62, 24, 1),
                  // border: Border.all(color: Colors.transparent, width: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(21),
                  )),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 10),
                    width: 110,
                    height: 115,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        // border: Border.all(color: Colors.transparent, width: 3),
                        // borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(upasanaImages[index]),
                            fit: BoxFit.fitHeight)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Text(
                    upasanaName[index],
                    style: const TextStyle(
                      color: Color(0xFFFCDDAF),
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // Expanded(
                  //   child:
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
