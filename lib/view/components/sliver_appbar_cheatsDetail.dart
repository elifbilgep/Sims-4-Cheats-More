import 'package:flutter/material.dart';

import '../../const.dart';
import '../colors.dart';
import 'headlines.dart';

class SliverAppBarCheatDetails extends StatelessWidget {
  const SliverAppBarCheatDetails({
    Key key,
    @required this.indexNO,
    @required this.cheatCategoryName,
  }) : super(key: key);

  final indexNO;
  final cheatCategoryName;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: greenDark2,
      expandedHeight: 200,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10,
          ),
          child: Container(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/${appBarPhotos[indexNO]}",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        titlePadding: EdgeInsets.all(20),
        title: Headline6(text: cheatCategoryName),
      ),
    );
  }
}
