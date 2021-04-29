import 'package:flutter/material.dart';
import 'package:sims4_cheats/const.dart';
import 'package:sims4_cheats/view/colors.dart';
import 'package:sims4_cheats/view/components/headlines.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        color: greenDark3,
      ),
      child: Padding(
        padding: rowPadding,
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: whiteHeadlineColor,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Headline6(
              text: text,
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
