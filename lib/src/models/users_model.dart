import 'dart:convert';

Usuario usuarioToFromJson(String str)=>Usuario.fromJson(
  json.decode(str)
); 

String usuarioToJson(Usuario data)=>json.encode(data.toJson());

class Usuario {

  Usuario({
    this.id,
    this.email,
    this.password,
    this.nombre,
    this.rol,
    this.avatar,
  });

  int? id;
  String? email;
  String? password;
  String? nombre;
  String? rol;
  String? avatar;

  factory Usuario.fromJson(Map<String,dynamic> json)=> Usuario(
    id: json["id"],
    email: json["email"],
    password: json["password"],
    nombre: json["name"],
    rol: json["role"],
    avatar: json["avatar"]
  );

  Map<String,dynamic> toJson() => {
    "id": id,
    "email": email,
    "password": password,
    "nombre": nombre,
    "rol": rol,
    "avatar": avatar
  };
}