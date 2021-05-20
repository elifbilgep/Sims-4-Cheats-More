
import 'package:flutter/material.dart';

import '../models/cheat_model.dart';

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


      cheats = cheatsModelFromMap(comingJson);

    } catch (hata) {
      print("Hata:" + hata.toString());
      cheats = [];
    }
    return cheats;
  }
}
