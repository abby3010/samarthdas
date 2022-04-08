import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class slider_2 extends StatefulWidget {
  @override
  State<slider_2> createState() => _sliderState();
}

class _sliderState extends State<slider_2> {
  List<Widget> container = [
    Sanket(
        "We should not let anyone else’s favor be\n on us. If someone does us a favor, that \n    favor must be returned quickly."),
    Sanket(
        "The Sadguru points to what is true and provokes the thought of discrimination between the true and the false. He inspires the inner determination with which one realizes Parabrahman, the absolute reality."),
    Sanket(
        "When seeing extraordinary qualities in someone, know that the Sadguru is residing in those qualities and bow to that person with great respect. "),
    Sanket(
        "The Sadguru in his fullness is millions of times greater than the gods. Even the Vedas failed when trying to describe him. "),
    Sanket(
        "Jnana, the knowledge, means non-duality. The Turya state is in fact duality. Pure knowledge, Shuddh Jnana is always different than this. "),
    Sanket(
        "Lord Rama is our lineage. Lord Rama is the supreme truth. He is the most powerful of the powerful, and he has liberated gods."),
    Sanket(
        "To follow the teachings of Guru is the main sign of spiritual life. To go against the teachings, one will surely meet the adversity."),
    Sanket(
        "Recognize God in his endless forms. He is the observer who sees, and is the witness who is the knower."),
    Sanket(
        "Being pleased with his devotees, Lord Rama has benevolently given his blessing, and these words have flowed out by his power, in the form of Dasbodh."),
    Sanket(
        "Continue to listen to spiritual discourses and everything can be understood. Listening clears away many types of confusion and entanglement.")
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        Container(
          height: 200,
          width: 382,
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

Widget Sanket(String S) {
  return Container(
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Color.fromRGBO(255, 205, 152, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(21),
        )),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          S,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(101, 35, 8, 1),
          ),
        ),
      ),
    ),
  );
}
