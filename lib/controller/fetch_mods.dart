import 'package:flutter/material.dart';

import '../models/mods_model.dart';

class FetchMods with ChangeNotifier {
  //bool dolma
  List<ModsModel> _mods;
  List<ModsModel> get mods => this._mods;

  set mods(List<ModsModel> value) {
    this._mods = value;
    notifyListeners();
  }

  readData(context) async {
    try {
      var comingJson = await DefaultAssetBundle.of(context)
          .loadString("assets/data/mods.json");

      mods = modsModelFromMap(comingJson);
    } catch (hata) {
      print("Hata:" + hata.toString());
      mods = [];
    }
    return mods;
  }
}
