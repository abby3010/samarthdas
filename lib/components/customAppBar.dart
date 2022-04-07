import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar SamarthAppBar({required String title}) {
  return AppBar(
    backgroundColor: const Color.fromRGBO(247, 144, 35, 1),
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.salsa(
        color: const Color.fromRGBO(101, 35, 8, 1),
        fontSize: 24,
      ),
    ),
  );
}
