import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String photoUrl;
  const HomeCard({
    Key key,
    this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
        BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0.0, 5.0))
      ]),
      height: 300,
      width: 180,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              photoUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
