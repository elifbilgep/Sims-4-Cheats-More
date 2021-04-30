import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/headlines.dart';

class CheatDetails extends StatelessWidget {
  final cheats;

  const CheatDetails({Key key, this.cheats}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          child: FutureBuilder(
            future: Future.delayed(Duration(seconds: 1)),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Center(child: CircularProgressIndicator());
              }

              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 150,
                    floating: false,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Headline6(text: "Cheat Categories"),
                      centerTitle: true,
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200.0,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, bottom: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        childCount: 27,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
