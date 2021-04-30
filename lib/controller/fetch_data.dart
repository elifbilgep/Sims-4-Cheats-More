import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sims4_cheats/models/cheat.dart';
import 'package:sims4_cheats/models/cheat_model.dart';

class FetchData with ChangeNotifier {
  //bool dolma
  List<CheatsModel> _cheats;
  List<CheatsModel> get cheats => this._cheats;

  set cheats(List<CheatsModel> value) {
    this._cheats = value;
    notifyListeners();
  }

  readData(context) async {
    try {
      var comingJson = await DefaultAssetBundle.of(context)
          .loadString("assets/data/cheats.json");

      // List<Cheat> mainCheatList = (jsonDecode(comingJson) as List)
      //     .map((map) => Cheat.fromJson(map))
      //     .toList();
      cheats = cheatsModelFromMap(comingJson);

      //print(mainCheatList[0].cheats[0].cheatName);
    } catch (hata) {
      print("Hata:" + hata.toString());
      cheats = [];
    }
    return cheats;
  }
}
