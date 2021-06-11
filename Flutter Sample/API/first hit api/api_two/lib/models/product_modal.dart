class SignupDataModel {
  SignupDataModel({
    this.data,
    this.success,
  });

  final List<Datum> data;
  final bool success;

  factory SignupDataModel.fromMap(Map<String, dynamic> json) => SignupDataModel(
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    success: json["success"] == null ? null : json["success"],
  );

  Map<String, dynamic> toMap() => {
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toMap())),
    "success": success == null ? null : success,
  };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.slug,
    this.description,
    this.image,
    this.banner,
    this.parentId,
    this.isActive,
    this.isUseForSell,
    this.deletedAt,
  });

  final int id;
  final String title;
  final String slug;
  final String description;
  final String image;
  final dynamic banner;
  final int parentId;
  final int isActive;
  final int isUseForSell;
  final dynamic deletedAt;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    slug: json["slug"] == null ? null : json["slug"],
    description: json["description"] == null ? null : json["description"],
    image: json["image"] == null ? null : json["image"],
    banner: json["banner"],
    parentId: json["parent_id"] == null ? null : json["parent_id"],
    isActive: json["is_active"] == null ? null : json["is_active"],
    isUseForSell: json["is_use_for_sell"] == null ? null : json["is_use_for_sell"],
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "slug": slug == null ? null : slug,
    "description": description == null ? null : description,
    "image": image == null ? null : image,
    "banner": banner,
    "parent_id": parentId == null ? null : parentId,
    "is_active": isActive == null ? null : isActive,
    "is_use_for_sell": isUseForSell == null ? null : isUseForSell,
    "deleted_at": deletedAt,
  };
}
