import 'package:flutter/material.dart';

class ListOfCheats extends StatelessWidget {
  const ListOfCheats({
    Key key,
    @required this.cheats,
  }) : super(key: key);

  final cheats;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
            child: Card(
              elevation: 3,
              child: ListTile(
                minVerticalPadding: 8,
                tileColor: Colors.grey.shade200,
                title: Text(
                  cheats[index].cheatName.toString(),
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
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
                        .copyWith(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ),
              ),
            ));
      }, childCount: cheats.length),
    );
  }
}
