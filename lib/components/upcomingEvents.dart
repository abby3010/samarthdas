import 'package:flutter/material.dart';

class UpcomingEvents extends StatelessWidget {
  final String name;
  final String date;
  const UpcomingEvents({Key? key, required this.name, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: const BoxDecoration(
                    color: Color(0xffFFE8BF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(21),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Text(
                        name + '\n' + date,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(101, 35, 8, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset(
                  "assets/images/Lord_Krishna.png",
                  width: 130,
                  height: 130,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
