import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/header.dart';

class Cheats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(
            text: "Cheats",
          ),
          ListView.builder(itemBuilder: (context, index) {
            
          })
        ],
      ),
    );
  }
}
