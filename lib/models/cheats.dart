class Cheats {
  String cheatName;
  String cheatResult;

  Cheats.frmJson(Map<String, dynamic> json)
      : cheatName = json["cheatName"],
        cheatResult = json["cheatResult"];

        
}
