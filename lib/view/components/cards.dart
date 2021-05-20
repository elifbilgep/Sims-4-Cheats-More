import 'package:flutter/material.dart';

import '../../const.dart';
import '../Pages/cheats_categories.dart';
import '../Pages/mods.dart';
import 'home_card.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width * 0.2,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              return Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cheats()));
            },
            child: HomeCard(
              photoUrl: homeCardsPhotos[0],
              text: "Cheats",
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              return Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mods()));
            },
            child: HomeCard(
              photoUrl: homeCardsPhotos[1],
              text: "Mods",
            ),
          ),
        ],
      ),
    );
  }
}
