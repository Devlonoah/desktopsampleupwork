class LabModel {
  LabModel({
    this.order,
    this.title,
    this.directory,
    this.remotePlay,
  });

  int? order;
  String? title;
  String? directory;
  String? remotePlay;

  factory LabModel.fromJson(Map<String, dynamic> json) => LabModel(
        order: json["order"],
        title: json["title"],
        directory: json["directory"],
        remotePlay: json["remote_play"] == null ? null : json["remote_play"],
      );

  Map<String, dynamic> toJson() => {
        "order": order,
        "title": title,
        "directory": directory,
        "remote_play": remotePlay == null ? null : remotePlay,
      };
}
