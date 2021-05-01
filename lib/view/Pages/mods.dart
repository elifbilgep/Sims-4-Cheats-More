import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sims4_cheats/controller/fetch_mods.dart';
import 'package:sims4_cheats/view/components/headline.dart';
import 'package:sims4_cheats/view/components/headlines.dart';
import 'package:sims4_cheats/view/components/sliver_app_cheats_category.dart';

import '../../const.dart';

class Mods extends StatelessWidget {
  List modsList = [];
  @override
  Widget build(BuildContext context) {
    var mods = Provider.of<FetchMods>(context, listen: false).readData(context);

    return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overScroll) {
        overScroll.disallowGlow();
        return false;
      },
      child: FutureBuilder(
        future: mods,
        builder: (context, snapshot) {
          if (snapshot.hasData == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          modsList = snapshot.data;
          return CustomScrollView(
            slivers: [
              SliverAppBarCheatsCategory(
                text: "Mods",
              ),
              ListViews(
                headerText: "Popular Mods",
                modList: modsList[0].mods,
              ),
              ListViews(
                headerText: "Terrfying Mods",
                modList: modsList[1].mods,
              ),
              ListViews(
                headerText: "Romance Mods",
                modList: modsList[2].mods,
              )
            ],
          );
        },
      ),
    ));
  }
}

class ListViews extends StatelessWidget {
  final String headerText;
  final List modList;

  const ListViews({
    Key key,
    this.headerText,
    this.modList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          height: 270,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Headline4(
                text: headerText,
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: modList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mods/${modList[index].modPhoto}"),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade700,
                                      blurRadius: 4,
                                      spreadRadius: 2)
                                ],
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            modList[index].modName.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ])),
    );
  }
}
