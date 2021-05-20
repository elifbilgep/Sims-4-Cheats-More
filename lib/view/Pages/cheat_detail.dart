
import 'package:flutter/material.dart';

import '../components/cheatsList.dart';
import '../components/sliver_appbar_cheatsDetail.dart';

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
