import 'package:flutter/material.dart';
import 'package:sims4_cheats/controller/fetchData.dart';
import 'package:sims4_cheats/models/cheat.dart';
import 'package:sims4_cheats/view/colors.dart';
import 'package:sims4_cheats/view/components/headlines.dart';
import 'package:sims4_cheats/view/components/home_card.dart';
import 'package:sims4_cheats/view/components/sideappbar.dart';

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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SideAppBar(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Headline3(
                        text: "Hi Elif!",
                      ),
                      Headline4(
                        text: "Welcome\nto The Sims 4 world",
                      ),
                    ],
                  ),
                  Positioned(
                      top: 200,
                      child: Container(
                        height: 400,
                        width: MediaQuery.o    
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            HomeCard(
                              photoUrl: "assets/images/money_home.png",
                            ),
                            HomeCard(
                              photoUrl: "assets/images/money_home.png",
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
