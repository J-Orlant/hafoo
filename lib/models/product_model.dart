import 'package:hafoo/models/category_model.dart';

class ProductModel {
  int? id;
  CategoryModel? category;
  String? image;
  String? name;
  String? slug;
  String? topping;
  double? price;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProductModel({
    required this.id,
    required this.category,
    required this.image,
    required this.name,
    required this.slug,
    required this.topping,
    required this.price,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = CategoryModel.fromJson(json['category']);
    image = json['image'];
    name = json['name'];
    slug = json['slug'];
    topping = json['topping'];
    price = double.parse(json['price']);
    description = json['description'];
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category!.toJson(),
      'image': image,
      'name': name,
      'slug': slug,
      'topping': topping,
      'price': price,
      'description': description,
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
    };
  }
}
