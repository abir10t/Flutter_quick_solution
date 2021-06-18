class SignupDataModel {
  SignupDataModel({
    this.id,
    this.title,
  });

  final int id;
  final String title;

  factory SignupDataModel.fromMap(Map<String, dynamic> json) => SignupDataModel(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
  };
}
