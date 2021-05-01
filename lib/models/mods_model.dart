// To parse this JSON data, do
//
//     final modsModel = modsModelFromMap(jsonString);

import 'dart:convert';

List<ModsModel> modsModelFromMap(String str) => List<ModsModel>.from(json.decode(str).map((x) => ModsModel.fromMap(x)));

String modsModelToMap(List<ModsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ModsModel {
    ModsModel({
        this.modCategory,
        this.mods,
    });

    String modCategory;
    List<Mod> mods;

    factory ModsModel.fromMap(Map<String, dynamic> json) => ModsModel(
        modCategory: json["modCategory"],
        mods: List<Mod>.from(json["mods"].map((x) => Mod.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "modCategory": modCategory,
        "mods": List<dynamic>.from(mods.map((x) => x.toMap())),
    };
}

class Mod {
    Mod({
        this.modName,
        this.modLink,
        this.modDescription,
        this.modPhoto,
    });

    String modName;
    String modLink;
    String modDescription;
    String modPhoto;

    factory Mod.fromMap(Map<String, dynamic> json) => Mod(
        modName: json["modName"],
        modLink: json["modLink"],
        modDescription: json["modDescription"],
        modPhoto: json["modPhoto"],
    );

    Map<String, dynamic> toMap() => {
        "modName": modName,
        "modLink": modLink,
        "modDescription": modDescription,
        "modPhoto": modPhoto,
    };
}
