import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samarthdas_app/pages/about/events.dart';
import 'package:samarthdas_app/pages/about/institution.dart';
import 'package:samarthdas_app/pages/about/parampara.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  late TabController _controller;
  CategoryType categoryType = CategoryType.institution;
  var index;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 144, 35, 1),
        title: Text(
          "About ",
          style: GoogleFonts.salsa(
            color: const Color.fromRGBO(101, 35, 8, 1),
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        // Column
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.transparent, // Tab Bar color change
            child: TabBar(
                onTap: (index) {
                  setState(() {
                    if (index == 0) {
                      categoryType = CategoryType.institution;
                    } else if (index == 1) {
                      categoryType = CategoryType.parampara;
                    } else if (index == 2) {
                      categoryType = CategoryType.events;
                    }
                  });
                },
                indicatorColor: Colors.transparent,
                // labelStyle:  ,
                unselectedLabelColor: const Color.fromRGBO(101, 35, 8, 1),
                labelPadding: const EdgeInsets.all(2),
                controller: _controller,
                tabs: [
                  getButtonUI(CategoryType.institution,
                      categoryType == CategoryType.institution),
                  getButtonUI(CategoryType.parampara,
                      categoryType == CategoryType.parampara),
                  getButtonUI(
                      CategoryType.events, categoryType == CategoryType.events),
                ]),
          ),
          Expanded(
            flex: 3,
            child: TabBarView(
              // Tab Bar View
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [Institution(), const Parampara(), const Events()],
            ),
          ),
        ],
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.institution == categoryTypeData) {
      txt = 'Institution';
    } else if (CategoryType.parampara == categoryTypeData) {
      txt = 'Parampara';
    } else if (CategoryType.events == categoryTypeData) {
      txt = 'Events';
    }
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF652308) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: const Color(0xFF652308))),
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 12, bottom: 12, left: 18, right: 18),
              child: Text(
                txt,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: isSelected
                      ? const Color(0xFFFBD99C)
                      : const Color(0xFF652308),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum CategoryType {
  institution,
  parampara,
  events,
}

class GetButtonUI extends StatelessWidget {
  final CategoryType categoryTypeData;
  final bool isSelected;
  const GetButtonUI(
      {Key? key, required this.categoryTypeData, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String txt = '';
    if (CategoryType.institution == categoryTypeData) {
      txt = 'Institution';
    } else if (CategoryType.parampara == categoryTypeData) {
      txt = 'Parampara';
    } else if (CategoryType.events == categoryTypeData) {
      txt = 'Events';
    }

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF652308) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: const Color(0xFF652308))),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 12, left: 18, right: 18),
            child: Center(
              child: Text(
                txt,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 0.27,
                  color: isSelected
                      ? const Color(0xFFFBD99C)
                      : const Color(0xFF652308),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
