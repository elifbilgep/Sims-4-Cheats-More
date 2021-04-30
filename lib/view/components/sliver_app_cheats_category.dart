import 'package:flutter/material.dart';

import 'headlines.dart';

class SliverAppBarCheatsCategory extends StatelessWidget {
  const SliverAppBarCheatsCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(bottom: 50),
        title: Headline6(
          text: "Cheat Categories",
        ),
      ),
    );
  }
}
