import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samarthdas_app/Slider.dart';
import 'package:samarthdas_app/Slider_2.dart';
import 'package:samarthdas_app/components/customAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SamarthAppBar(title: "Jukkal Sansthan"),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              slider(),
              // 1st

              // 2nd
              Container(
                height: 200,
                width: 200,
                child: const Center(
                  child: Image(image: AssetImage("assets/images/Temple.png")),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(119, 34, 0, 1)),
                    child: const Center(
                      child: Text(
                        "Parampara",
                        style: TextStyle(
                            color: Color(0xFFFBD99C),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(119, 34, 0, 1)),
                    child: const Center(
                      child: Text(
                        "Institution",
                        style: TextStyle(
                            color: Color(0xFFFBD99C),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              slider_2(),
              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Upcoming Events",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(119, 34, 0, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Events("assets/images/Ramdas_Swami_1.png", "Dasbodh", false),
                  Events("assets/images/Shri_Ram.png", "Upasana", false),
                  Events("assets/images/Lord_Hanuman.png", "Bheemrupi", false),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Social Media",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(119, 34, 0, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              const Center(
                child:
                    Image(image: AssetImage("assets/images/Social_Media.png")),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ));
  }
}

Widget Events(
  String image,
  String Type,
  bool isSVG,
) {
  return Expanded(
    child: Material(
      // color: AppTheme.more_bg,
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => MainActivityAdmission()));
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: isSVG
                  ? SvgPicture.asset(
                      image,
                    )
                  : Image.asset(image),
            ),
            Text(
              Type,
              style: const TextStyle(
                  color: Color(0xFF652308),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    ),
  );
}
