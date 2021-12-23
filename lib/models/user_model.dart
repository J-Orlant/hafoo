class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? token;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'token': token,
    };
  }
}
