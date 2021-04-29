class Cheats {
  String cheatName;
  String cheatResult;
  String get getCheatName => this.cheatName;

  set setCheatName(String cheatName) => this.cheatName = cheatName;

  get getCheatResult => this.cheatResult;

  set setCheatResult(cheatResult) => this.cheatResult = cheatResult;

  Cheats.fromJson(Map<String, dynamic> json)
      : cheatName = json["cheatName"],
        cheatResult = json["cheatResult"];
}
