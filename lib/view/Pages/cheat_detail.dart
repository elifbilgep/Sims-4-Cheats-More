import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/headlines.dart';

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
                SliverAppBar(
                  backgroundColor: Colors.green.shade300,
                  expandedHeight: 200,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "assets/images/${appBarPhotos[indexNO]}",
                          ),
                        ),
                      ),
                    ),
                    titlePadding: EdgeInsets.all(20),
                    title: Headline6(text: cheatCategoryName),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
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
                            subtitle: Text(
                              cheats[index].cheatResult.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                    color: Colors.grey.shade700,
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
