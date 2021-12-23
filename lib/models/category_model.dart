class CategoryModel {
  int? id;
  String? image;
  String? name;
  DateTime? createdAt;
  DateTime? updatedAt;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': 'id',
      'name': 'name',
      'image': 'image',
      'created_at': 'created_at',
      'updated_at': 'updated_at',
    };
  }
}
