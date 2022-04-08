import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class slider extends StatefulWidget {
  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  List<Container> container = [
    Container(
      height: 116,
      width: 380,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF853B18),
              Color(0xFFF79023),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          )),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
            width: 82,
            height: 100,
            decoration: BoxDecoration(
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
    //2nd container
    Container(
      height: 116,
      width: 380,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF703216),
              Color(0xFF923E18),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          )),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
              width: 82,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Ramdas_Swami.png"),
                      fit: BoxFit.fill)),
            ),
            Text(
              "आदिनारायणं विष्णूं ब्रह्माणं च वसिष्ठकम् ।\nश्रीरामं मारुतिं वन्दे रामदासो जगद्गुरूम् ।",
              style: const TextStyle(
                color: Color(0xFFFCDDAF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ),
    //3rd COntainer
    Container(
      height: 116,
      width: 380,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF703216),
              Color(0xFF923E18),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          )),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
              width: 82,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/8 1.png"),
                      fit: BoxFit.fill)),
            ),
            Text(
              "समर्थसेवानिरतं श्रीसमर्थेति वादिनम् ।\nसमर्थदास प्रख्यातं वन्दे केशवस्वामिनम् ।।",
              style: const TextStyle(
                color: Color(0xFFFCDDAF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: container.length,
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
              viewportFraction: 0.97,
              initialPage: 0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (BuildContext context, int Index, int page) {
              return container[Index];
            },
          ),
        ),
        SizedBox(
          height: 15,
        ),
        BuildIndicator(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget BuildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: container.length,
      effect: SlideEffect(
          spacing: 8.0,
          radius: 8.0,
          dotWidth: 12.0,
          dotHeight: 12.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: Color.fromRGBO(142, 49, 12, 1)),
    );
  }
}
