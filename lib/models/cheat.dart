import 'package:sims4_cheats/models/cheats.dart';

class Cheat {
  String category;
  String cheatCategory;
  List cheats;

  Cheat.fromJson(Map<String, dynamic> json)
      : category = json["category"],
        cheatCategory = json["cheatCategory"],
        cheats =
            List<Cheats>.from(json["cheats"].map((it) => Cheats.fromJson(it)));
}
