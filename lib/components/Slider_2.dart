import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MiddleSlider extends StatefulWidget {
  const MiddleSlider({Key? key}) : super(key: key);

  @override
  State<MiddleSlider> createState() => _SliderState();
}

class _SliderState extends State<MiddleSlider> {
  List<Widget> container = [
    textShowcase(
        "We should not let anyone else’s favor be\n on us. If someone does us a favor, that \n    favor must be returned quickly."),
    textShowcase(
        "The Sadguru points to what is true and provokes the thought of discrimination between the true and the false. He inspires the inner determination with which one realizes Parabrahman, the absolute reality."),
    textShowcase(
        "When seeing extraordinary qualities in someone, know that the Sadguru is residing in those qualities and bow to that person with great respect. "),
    textShowcase(
        "The Sadguru in his fullness is millions of times greater than the gods. Even the Vedas failed when trying to describe him. "),
    textShowcase(
        "Jnana, the knowledge, means non-duality. The Turya state is in fact duality. Pure knowledge, Shuddh Jnana is always different than this. "),
    textShowcase(
        "Lord Rama is our lineage. Lord Rama is the supreme truth. He is the most powerful of the powerful, and he has liberated gods."),
    textShowcase(
        "To follow the teachings of Guru is the main sign of spiritual life. To go against the teachings, one will surely meet the adversity."),
    textShowcase(
        "Recognize God in his endless forms. He is the observer who sees, and is the witness who is the knower."),
    textShowcase(
        "Being pleased with his devotees, Lord Rama has benevolently given his blessing, and these words have flowed out by his power, in the form of Dasbodh."),
    textShowcase(
        "Continue to listen to spiritual discourses and everything can be understood. Listening clears away many types of confusion and entanglement.")
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 175,
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
        const SizedBox(
          height: 15,
        ),
        buildIndicator(),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: container.length,
      effect: const SlideEffect(
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

Widget textShowcase(String text) {
  return Container(
    margin: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 205, 152, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(21),
        )),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(101, 35, 8, 1),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Sri Samarth",
              textAlign: TextAlign.center,
              style: GoogleFonts.sacramento(
                color: const Color.fromRGBO(101, 35, 8, 1),
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
