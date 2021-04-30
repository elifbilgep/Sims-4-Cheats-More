// To parse this JSON data, do
//
//     final cheatsModel = cheatsModelFromMap(jsonString);

import 'dart:convert';

List<CheatsModel> cheatsModelFromMap(String str) => List<CheatsModel>.from(json.decode(str).map((x) => CheatsModel.fromMap(x)));

String cheatsModelToMap(List<CheatsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class CheatsModel {
    CheatsModel({
        this.category,
        this.cheatCategory,
        this.cheats,
    });

    Category category;
    String cheatCategory;
    List<Cheat> cheats;

    factory CheatsModel.fromMap(Map<String, dynamic> json) => CheatsModel(
        category: categoryValues.map[json["category"]],
        cheatCategory: json["cheatCategory"],
        cheats: List<Cheat>.from(json["cheats"].map((x) => Cheat.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "category": categoryValues.reverse[category],
        "cheatCategory": cheatCategory,
        "cheats": List<dynamic>.from(cheats.map((x) => x.toMap())),
    };
}

enum Category { CHEATS }

final categoryValues = EnumValues({
    "cheats": Category.CHEATS
});

class Cheat {
    Cheat({
        this.cheatName,
        this.cheatResult,
    });

    String cheatName;
    String cheatResult;

    factory Cheat.fromMap(Map<String, dynamic> json) => Cheat(
        cheatName: json["cheatName"],
        cheatResult: json["cheatResult"],
    );

    Map<String, dynamic> toMap() => {
        "cheatName": cheatName,
        "cheatResult": cheatResult,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
