import 'package:programacion_apps_2/src/models/users_model.dart';
import 'package:flutter/material.dart';

class UsuarioWidget extends StatelessWidget {
  const UsuarioWidget({super.key, required this.model});
  final Usuario model;
  @override
  Widget build(BuildContext context) {
    var url = model.avatar.toString();
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(url),
        ),
        title: Text(model.nombre ?? ""),
        subtitle: Text(model.email ?? ""),
      ),
    );
  }
}