import 'package:flutter/material.dart';

class Events extends StatelessWidget {

  static const List<Map<String, String>> events = [
    {
      "text1": "Chaitra Shuddh Pratipada to Navami",
      "text2": "Shri Rama Navami Utsav"
    },
    {"text1": "Chaitra Paurnima", "text2": "Shri Hanuman Jayanti"},
    {
      "text1": "Chaitra Vadya Chaturdashi",
      "text2": "Shri Vennaswami Punyatithi"
    },
    {
      "text1": "Ashadha Shuddh Trayodashi",
      "text2": "Shri Kalyanswami Punyatithi"
    },
    {"text1": "Ashadha Paurnima", "text2": "Gurupaurnima"},
    {
      "text1": "Ashadha Paurnima to Karthik Paurnima",
      "text2": "Chaturmasyarambha"
    },
    {
      "text1": "Ashwin Shuddh Pratipada to Dashami",
      "text2": "Shardeey Navaratri"
    },
    {"text1": "Karthik Shuddh Pratipada", "text2": "Shri Akkaswami Punyatithi"},
    {"text1": "Karthik Paurnima", "text2": "Deepotsava"},
    {
      "text1": "Karthik Vadya Shashti",
      "text2": "Shri Samarthdas Maharaj Punyatithi"
    },
    {"text1": "Karthik Vadya", "text2": "Shri Govind Maharaj Janmotsav"},
    {
      "text1": "Margashirsh Vadya Dashami",
      "text2": "Shri Govind Maharaj Punyatithi Utsav"
    },
    {"text1": "Magh Shuddh Navami", "text2": "Shrimat Dasbodh Jayanti"},
    {
      "text1": "Magh Shuddh Pratipada to Navami",
      "text2": "Shri Dasnavami Utsav"
    },
    {
      "text1": "Falgun Shuddh Pratipada",
      "text2": "Shri Uddhav Swami Punyatithi"
    },
  ];

  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    events[index]["text1"]!,
                    style: const TextStyle(
                        color: Color.fromRGBO(101, 35, 8, 1), fontSize: 18),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    events[index]["text2"]!,
                    style: const TextStyle(
                        color: Color.fromRGBO(101, 35, 8, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              );
            }),
      ),
    );
  }
}
