import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/headlines.dart';
import 'package:sims4_cheats/view/components/home_card.dart';
import 'package:sims4_cheats/view/components/sideappbar.dart';


import '../../const.dart';

class HomePage extends StatefulWidget {
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
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Headline3(
                        text: "Hi Elif",
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
      height: 350,
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width * 0.2,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          HomeCard(
            photoUrl: homeCardsPhotos[0],
            text: "Cheats",
          ),
          SizedBox(
            width: 20,
          ),
          HomeCard(
            photoUrl: homeCardsPhotos[1],
            text: "Mods",
          ),
        ],
      ),
    );
  }
}