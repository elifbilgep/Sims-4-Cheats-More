import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/headlines.dart';

class HeadlinesHome extends StatelessWidget {
  const HeadlinesHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline3(
            text: "Hi Elif!",
          ),
          Headline4(
            text: "Welcome\nto The Sims 4 world",
          )
        ],
      ),
    );
  }
}
