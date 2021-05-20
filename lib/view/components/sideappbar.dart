import 'package:flutter/material.dart';

import '../colors.dart';

class SideAppBar extends StatelessWidget {
  final textName;
  const SideAppBar({
    Key key,
    this.textName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 55,
      color: greenDark3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.search,
            color: greenLight4,
            size: 40,
          ),
          Icon(
            Icons.star_rate,
            color: greenLight4,
            size: 30,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.share,
              color: greenLight4,
              size: 30,
            ),
          ),
          SizedBox(
            height: 370,
          )
        ],
      ),
    );
  }
}
