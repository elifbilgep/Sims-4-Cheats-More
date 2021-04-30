class Cheats {
  String cheatName;
  String cheatResult;
  String get getCheatName => this.cheatName;


  Cheats.fromJson(Map<String, dynamic> json)
      : cheatName = json["cheatName"],
        cheatResult = json["cheatResult"];
}
