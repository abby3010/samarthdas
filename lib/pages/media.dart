import 'package:flutter/material.dart';
import 'package:samarthdas_app/components/customAppBar.dart';

class Media extends StatelessWidget {
  Media({Key? key}) : super(key: key);
  List<String> images = [
    "assets/images/IMG_8169 1.png",
    "assets/images/IMG_8178 1.png",
    "assets/images/IMG_8177 (1) (1).png",
    "assets/images/IMG_8218 1 (1).png",
    "assets/images/WhatsApp Image 2021-12-07 at 19.00 (2).png",
    "assets/images/WhatsApp Image 2021-12-07 at 18.30 1 (1).png",
    "assets/images/WhatsApp Image 2021-12-07 at 18.30 2 (1).png",
    "assets/images/IMG_8203 1 (1).png",
    "assets/images/WhatsApp Image 2021-12-07 at 18.32 1 (1).png",
    "assets/images/WhatsApp Image 2021-12-16 at 19.09 1 (1).png",
    "assets/images/WhatsApp Image 2021-12-07 at 19.00 (4).png",
    "assets/images/WhatsApp Image 2021-12-07 at 19.00 1 (1).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SamarthAppBar(title: 'Media'),
      body: InteractiveViewer(
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                  right: 25, left: 25, top: 10, bottom: 10),
              height: 215,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage(images[index]))),
            );
          },
        ),
      ),
    );
  }
}
