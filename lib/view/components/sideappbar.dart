import 'package:flutter/material.dart';

import '../colors.dart';

class SideAppBar extends StatelessWidget {
  const SideAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 80,
        color: greenDark3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.search,
              color: greenLight4,
              size: 40,
            ),
            Icon(
              Icons.favorite,
              color: greenLight4,
              size: 30,
            ),
            Icon(
              Icons.share,
              color: greenLight4,
              size: 30,
            ),
            SizedBox(
              height: 420,
            )
          ],
        ),
      ),
    );
  }
}
