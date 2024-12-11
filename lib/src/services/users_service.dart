// ignore_for_file: avoid_print

import 'package:programacion_apps_2/src/models/users_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioService {
  UsuarioService();
  final String _rootUrl = 'https://api.escuelajs.co/api/v1/users';

  Future<List<Usuario>?> getUsuarios() async {
    try {
      List<Usuario> result = [];
      var url = Uri.parse(_rootUrl);
      final response = await http.get(url);
      print(response);
      if (response.body.isEmpty) return result;
      var content = json.decode(response.body);
      List<dynamic> usuarios = content;
      for (var item in usuarios){
        var usuario = Usuario.fromJson(item);
        result.add(usuario);
      }
      return result;
    } catch (e) {
      print(e);
      return null;
    }
  }
}