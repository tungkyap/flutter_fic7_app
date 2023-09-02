import 'dart:convert';

class RegisterRequestModel {
  // {
  //   "email": "tungkyap@gmail.com",
  //   "password": "12345678",
  //   "name": "tungky"
  // }

  final String email;
  final String password;
  final String name;

  RegisterRequestModel({
    required this.email, 
    required this.password, 
    required this.name
  });

  Map<String, dynamic> toMap() => {
    "email": email,
    "password": password,
    "name": name,
  };

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      email: map["email"] ?? '',
      password: map["password"] ?? '',
      name: map["name"] ?? '',
    );
  } 

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromJson(String source) => 
    RegisterRequestModel.fromMap(json.decode(source));


}