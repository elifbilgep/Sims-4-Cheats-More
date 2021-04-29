import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sims4_cheats/models/cheat.dart';

class FetchData with ChangeNotifier {
  readData(context) async {
    List cheatCategoryList = [];

    try {
      var comingJson = await DefaultAssetBundle.of(context)
          .loadString("assets/data/cheats.json");

      List<Cheat> mainCheatList = (jsonDecode(comingJson) as List)
          .map((map) => Cheat.fromJson(map))
          .toList();

      for (var i = 0; i < mainCheatList.length; i++) {
        cheatCategoryList.add(mainCheatList[i].cheatCategory);
      }
    } catch (hata) {
      print("Hata:" + hata.toString());
    }

    return cheatCategoryList;
  }
}
