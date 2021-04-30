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
        title: Headline6(text: "Cheat Categories"),
        centerTitle: true,
      ),
    );
  }
}
