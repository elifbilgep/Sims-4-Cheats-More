import 'package:flutter/material.dart';

import 'headlines.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.15),
      child: Center(
        child: Container(
          width: 260,
          height: size.height * 0.2,
          child: Center(
            child: Column(
              children: [
                Headline1(
                  text: "Sul Sul!",
                ),
                Headline2(
                  text: "How should I call you?",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
