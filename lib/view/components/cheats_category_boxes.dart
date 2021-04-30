import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/Pages/cheat_detail.dart';

import '../../const.dart';

class CheatsCategoryBoxes extends StatelessWidget {
  const CheatsCategoryBoxes({
    Key key,
    @required this.cheatCategoryList,
  }) : super(key: key);

  final List cheatCategoryList;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
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
            return GestureDetector(
              onTap: () {
                return Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheatDetails(
                        cheats: cheatCategoryList[index].cheats,
                        cheatCategoryName:
                            cheatCategoryList[index].cheatCategory,
                        indexNO: index,
                      ),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/${cheatsCategoryPhotos[index]}",
                      ),
                      fit: BoxFit.cover),
                  color: Colors.pink,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        cheatCategoryList[index].cheatCategory,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          childCount: 27,
        ),
      ),
    );
  }
}
