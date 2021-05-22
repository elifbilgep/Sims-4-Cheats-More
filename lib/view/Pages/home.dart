import 'package:flutter/material.dart';

import '../components/cards.dart';
import '../components/headlines.dart';
import '../components/sideappbar.dart';

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
                        text: "Sul Sul! ",
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Headline4(
                        text: "The Sims 4\nCheats & More",
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
