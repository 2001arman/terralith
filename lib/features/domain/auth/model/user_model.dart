import 'dart:convert';

class UserModel {
  String avatar;
  String name;
  final String userId;

  UserModel({
    required this.avatar,
    required this.name,
    required this.userId,
  });

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        avatar: json["avatar"],
        name: json["name"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "userId": userId,
      };
}
