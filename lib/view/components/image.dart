import 'package:flutter/material.dart';

import '../../const.dart';

class Plumbob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 110,
      child: Image.asset(
        plumbobAssets,
        fit: BoxFit.fill,
      ),
    );
  }
}
