import 'package:flutter/material.dart';
import 'package:sims4_cheats/models/cheat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Text("Hello")],
      ),
    );
  }

  Future<List<Cheat>> readData() async {
    try {
      var comingJson = await DefaultAssetBundle.of(context)
          .loadString("assets/data/cheats.json");
      debugPrint(comingJson)
    } catch (hata) {
      print("Ağ:" + hata.toString());
    }
  }
}
