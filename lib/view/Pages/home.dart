import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sims4_cheats/controller/fetchData.dart';
import 'package:sims4_cheats/models/cheat.dart';
import 'package:sims4_cheats/view/Widgets/home_card.dart';
import 'package:sims4_cheats/view/colors.dart';
import 'package:sims4_cheats/view/components/sideappbar.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:sims4_cheats/view/widgets/headlines.dart';

import '../../const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  List<int> data = [];
  int _focusedIndex = 0;

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

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
                      child: Container(
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
                      ),
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

