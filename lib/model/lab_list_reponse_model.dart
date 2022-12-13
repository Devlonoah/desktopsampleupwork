// To parse this JSON data, do
//
//     final labListResponseModel = labListResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:desktopsampleupwork/model/lab.dart';

class LabListResponseModel {
  LabListResponseModel({
    this.description,
    this.platformReadyCmd,
    this.labList,
  });

  String? description;
  String? platformReadyCmd;
  List<LabModel>? labList;

  factory LabListResponseModel.fromJson(Map<String, dynamic> json) =>
      LabListResponseModel(
        description: json["description"],
        platformReadyCmd: json["platform_ready_cmd"],
        labList: List<LabModel>.from(
            json["lab_list"].map((x) => LabModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "platform_ready_cmd": platformReadyCmd,
        "lab_list": List<dynamic>.from(labList ?? [].map((x) => x.toJson())),
      };

  static LabListResponseModel labListResponseModelFromJson(String str) =>
      LabListResponseModel.fromJson(json.decode(str));

  static String labListResponseModelToJson(LabListResponseModel data) =>
      json.encode(data.toJson());
}
