import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/cheatsList.dart';
import 'package:sims4_cheats/view/components/headlines.dart';
import 'package:sims4_cheats/view/components/sliver_appbar_cheatsDetail.dart';

import '../../const.dart';
import '../colors.dart';

class CheatDetails extends StatelessWidget {
  final indexNO;
  final cheats;
  final cheatCategoryName;
  const CheatDetails(
      {Key key, this.cheats, this.cheatCategoryName, this.indexNO})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overScroll) {
              overScroll.disallowGlow();
              return false;
            },
            child: CustomScrollView(
              slivers: [
                SliverAppBarCheatDetails(
                    indexNO: indexNO, cheatCategoryName: cheatCategoryName),
                ListOfCheats(cheats: cheats),
              ],
            )),
      ),
    );
  }
}
