import 'package:flutter/material.dart';
import 'package:sims4_cheats/models/cheat.dart';

class FetcData extends StatefulWidget {
  @override
  _FetcDataState createState() => _FetcDataState();
}

class _FetcDataState extends State<FetcData> {
  @override
  Widget build(BuildContext context) {}

  Future<List<Cheat>> readData() async {
    try {
      var comingJson = await DefaultAssetBundle.of(context)
          .loadString("assets/data/cheats.json");
      debugPrint(comingJson);
    } catch (hata) {
      print("Ağ:" + hata.toString());
    }
  }
}
