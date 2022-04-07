import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Parampara extends StatefulWidget {
  const Parampara({Key? key}) : super(key: key);

  @override
  State<Parampara> createState() => _ParamparaState();
}

class _ParamparaState extends State<Parampara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    'assets/images/7 1.png',
                    width: 128.0,
                    height: 158.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Sadguru Shri Samarth\n"
                  "Ramdas Swami Maharaj",
                  style: TextStyle(
                      color: Color.fromRGBO(101, 35, 8, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const Text(
                  "Shri Samartha Ramadas Swami was incarnated in the year 1608 AD. He was a revolutionary saint of his time. That was the period when the virtuous and blessed land of India was suffering in the crisis and turmoil of invasions. Shri Samartha became the guiding light and rejuvenated the society by his deeds, message and works. He composed the texts such as Manobodha and Dasbodh which is considered as his magnum opus.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    'assets/images/8 1.png',
                    width: 128.0,
                    height: 158.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Sadguru Shri Samarthdas\n"
                  "Keshav Maharaj",
                  style: TextStyle(
                      color: Color.fromRGBO(101, 35, 8, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const Text(
                  "Shri Keshav Swami, the rejuvenator of Samartha sect, one who is awarded with the title as Shri Samartha Das, born in the year 1876 AD. As his family belonged to the Samartha sect, naturally he had an inclination towards Shri Samartha and his cult. In his childhood he followed abstinence. He came to Sajjangad at the age of 13 to offer his services to Shri Samartha by renouncing the mundane life. He was instructed with Rama Mahamantra by Gangadhar swami, a descendant of Shri Samartha. As per his Guru’s order he became the head of Indurbodhan (Nizamabad) Matha in the year 1933 AD. He wrote a commentary on Dasbodh in 3 volumes known as “Dasbodha Sudharasa”.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  'assets/images/jukkal-home-slider-img-03 1 (1).png',
                  width: 128.0,
                  height: 158.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Sadguru Shri Govind Maharaj",
                  style: TextStyle(
                      color: Color.fromRGBO(101, 35, 8, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const Text(
                  "Shri Sadguru Govind Maharaj was incarnated with the blessings of Satyanarayana. His incarnation was indeed a result of Rama worship that was being carried out in his lineage for 22 generations. He was instructed into Samartha order by Shri Keshava Swami in the year 1939 AD. He did Purashcharana (recitation & reiteration) of Rama Mantra for 13 crore times and was blessed with the (Darshana) vision of Shri Samartha and Lord Rama at Sarangapur. In the year 1945 AD Shri Maharaj left his native village Potangal and came to Shri Kshetra Jukkal. He taught many disciples. Deceased Brahmin boy came to life because of his grace. He wrote a commentary of “Dasbodh Sudharasa” which was composed by his Guru Shri Keshav Swami and named it as “Dasbodh Sudharasa Bodhini”. He contributed to telugu literature by writing texts such as Shriram Seva, Samashloki, Upasana, commentary on Manobodha in telugu language.",
                  style: TextStyle(
                    color: Color.fromRGBO(101, 35, 8, 1),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
              const SizedBox(
                height: 10,
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
  const _url = "https://samarthdas.org/parampara/";
  if (!await launch(_url)) throw 'Could not launch $_url';
}
