import 'package:flutter/material.dart';

import 'headlines.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    this.photoUrl,
    this.text,
  }) : super(key: key);

  final photoUrl;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
        BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0.0, 5.0))
      ]),
      height: 300,
      width: 240,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              photoUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 15,
            top: 20,
            child: Headline5(
              text: text,
            ),
          )
        ],
      ),
    );
  }
}
