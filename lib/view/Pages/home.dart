import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/Pages/cheats_categories.dart';
import 'package:sims4_cheats/view/Pages/mods.dart';
import 'package:sims4_cheats/view/components/headlines.dart';
import 'package:sims4_cheats/view/components/home_card.dart';
import 'package:sims4_cheats/view/components/sideappbar.dart';

import '../../const.dart';

class HomePage extends StatefulWidget {
  final String name;

  const HomePage({Key key, this.name}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child: Row(
            children: [
              SideAppBar(),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Headline3(
                        text: "Hi " + widget.name + "!",
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Headline4(
                        text: "Welcome to\nThe Sims 4 World",
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Cards(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

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
