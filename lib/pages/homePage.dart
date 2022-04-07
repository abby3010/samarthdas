import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samarthdas_app/components/customAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SamarthAppBar(title: "Jukkal Sansthan"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // 1st
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8, top: 16),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF853B18),
                        Color(0xFFF79023),
                      ],
                    ),
                    // border: Border.all(color: Colors.green, width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          right: 8, left: 8, top: 8, bottom: 8),
                      width: 82,
                      height: 100,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red, width: 3),
                          borderRadius: BorderRadius.circular(90),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/jukkal-home-slider-img-03 1.png"),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Welcome to ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Shri Govind Maharaj Sansthan",
                          style: TextStyle(
                            color: Color(0xFFFBD99C),
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "The cynosure of divine ecstacy",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // 2nd
              const Center(
                child: Image(image: AssetImage("assets/images/Group 11.png")),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 35,
                    padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
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
              Container(
                padding: const EdgeInsets.all(8),
                child: const Image(
                    image: AssetImage("assets/images/Group 31.png")),
              ),
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
                  Events("assets/images/Group 354.png", "Dasbodh", false),
                  Events("assets/images/Group 28.svg", "Upasana", true),
                  Events("assets/images/Group 29.svg", "Bheemrupi", true),
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
                child: Image(image: AssetImage("assets/images/6 1.png")),
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
