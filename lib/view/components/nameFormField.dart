import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sims4_cheats/view/colors.dart';

class NameFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: 220,
      child: Center(
        child: Form(
            child: TextFormField(
          maxLength: 20,
          cursorColor: whiteHeadlineColor,
          style: GoogleFonts.roboto(color: whiteHeadlineColor, fontSize: 19),
          decoration: InputDecoration(
              counterStyle: TextStyle(fontSize: 16, color: whiteHeadlineColor),
              hintText: "Name",
              hintStyle:
                  GoogleFonts.roboto(color: whiteHeadlineColor, fontSize: 19),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: whiteHeadlineColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: whiteHeadlineColor),
              )),
        )),
      ),
    );
  }
}
