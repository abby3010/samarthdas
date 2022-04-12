import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:samarthdas_app/components/Slider.dart';
import 'package:samarthdas_app/components/Slider_2.dart';
import 'package:samarthdas_app/components/customAppBar.dart';
import 'package:samarthdas_app/pages/about/institution.dart';
import 'package:samarthdas_app/pages/about/parampara.dart';

import '../components/upcomingEvents.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SamarthAppBar(title: "Jukkal Sansthan"),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection('Upcoming Events')
            .doc("event_details")
            .get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: Text("Data does not exist"));
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TopSlider(),
                  const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(
                      child:
                          Image(image: AssetImage("assets/images/Temple.png")),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Parampara(showAppBar: true)));
                        },
                        child: Container(
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
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Institution(showAppBar: true)));
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 225,
                    width: 382,
                    child: Stack(
                      children: const [
                        MiddleSlider(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image(
                              image: AssetImage("assets/images/comma1.png"),
                              width: 50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 50, right: 10),
                            child: Image(
                              image: AssetImage("assets/images/comma2.png"),
                              width: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  UpcomingEvents(date: data["date"], name: data["name"]),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Events("assets/images/Ramdas_Swami_1.png", "Dasbodh",
                          false, context),
                      Events("assets/images/Shri_Ram.png", "Upasana", false,
                          context),
                      Events("assets/images/Lord_Hanuman.png", "Bheemrupi",
                          false, context),
                    ],
                  ),
                  const SizedBox(
                    height: 125,
                  ),
                ],
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Widget Events(String image, String type, bool isSVG, BuildContext context) {
  return Expanded(
    child: Material(
      // color: AppTheme.more_bg,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/" + type);
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF853B18),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: isSVG
                    ? SvgPicture.asset(
                        image,
                      )
                    : Image.asset(image),
              ),
            ),
            Text(
              type,
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
