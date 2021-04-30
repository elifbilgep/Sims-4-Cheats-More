import 'dart:convert';
import 'package:flutter/material.dart';
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
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Padding(
                        padding:
                            const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                        child: Card(
                          elevation: 3,
                          child: ListTile(
                            minVerticalPadding: 8,
                            tileColor: Colors.grey.shade200,
                            title: Text(
                              cheats[index].cheatName.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.green,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                cheats[index].cheatResult.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        color: Colors.grey.shade700,
                                        fontSize: 15),
                              ),
                            ),
                          ),
                        ));
                  }, childCount: cheats.length),
                ),
              ],
            )),
      ),
    );
  }
}
