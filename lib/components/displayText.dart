import 'package:flutter/material.dart';
import 'package:samarthdas_app/components/customAppBar.dart';

class DisplayText extends StatelessWidget {
  final String name;
  final String text;
  const DisplayText({Key? key, required this.name, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SamarthAppBar(title: name),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Color.fromRGBO(101, 35, 8, 1),
                fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
