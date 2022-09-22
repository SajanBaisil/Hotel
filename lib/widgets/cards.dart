import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCards extends StatelessWidget {
  final hotelicons;
  final text;
  final cardcolor;
  const HotelCards(
      {super.key,
      required this.hotelicons,
      required this.text,
      required this.cardcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        height: 90,
        width: 100,
        decoration: BoxDecoration(
            color: cardcolor, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              hotelicons,
              color: Colors.white,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}