import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Institution extends StatefulWidget {
  const Institution({Key? key}) : super(key: key);

  @override
  State<Institution> createState() => _InstitutionState();
}

class _InstitutionState extends State<Institution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 10),
                  width: 206,
                  height: 221,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/WhatsApp Image 2021-12-12 at 10.30 1.png"),
                          fit: BoxFit.contain)),
                ),
              ),
              const Text(
                  "In the year 1866 AD, on the auspicious day of Ram Navami, pontiff of Shri Indurbodhan Matha with the pontiff of Bhalki matha consecrated Jukkal Matha by installing an idol of Lord Rama at Gurukshetra Jukkal. From there onwards, Jukkal matha started to operate under the control of these two mathas.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 8,
              ),
              const Text(
                  "Later in 1945 AD, Shri Govinda Maharaja Ramadasi, a disciple of Indorbodhan Matha pontiff was anointed as head of Jukkal Matha as per the Samarthadas Keshav’s divine order. Since then Mathapati tradition started in the Jukkal Math according to the Ramdasi sect.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 8,
              ),
              const Text(
                  "According to Samarth sectarian beliefs, daily offerings, prayers etc started at this place. The system is still in place today. At present HH Shri Gopal Maharaj Ramdasi is present pontiff of Ramdasi Matha.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 8,
              ),
              const Text(
                  "The matha is still expanding with the full grace of Sri Samarth and Shri Maharaj. Many new initiatives have been started by Shri Gopal Maharaj in the matha, under the jurisdiction of the matha, with the help of gracious disciples, devotees and villagers. Let’s now take a look at some of these important initiatives.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "\u2022 Samarth Kamdhenu Bhiksha Daura\n"
                "\u2022 Shri Samarth Paduka Prachar Daura\n"
                "\u2022 Samarth Govind Maharaj Goshala\n"
                "\u2022 Anantbhatt Vedshastra Pathshala\n"
                "\u2022 Samarthdas Bhaktanivas and Tulsabai Annapurna Annachatra\n"
                "\u2022 Upasana Mandal\n"
                "\u2022 Bhagvad Katha and Tirth Yatra\n"
                "\u2022 Dasbodh Parayan Saptah\n"
                "\u2022 Saptahik Pravchan Mala\n\n"
                "Know more about these initiatives here.",
                style: TextStyle(
                  color: Color.fromRGBO(101, 35, 8, 1),
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 136,
                    height: 36,
                    margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 144, 35, 1),
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Read More",
                        style: TextStyle(
                          color: Color.fromRGBO(100, 35, 8, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL() async {
  const _url = "https://samarthdas.org/institution/";
  if (!await launch(_url)) throw 'Could not launch $_url';
}
