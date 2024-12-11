import 'package:programacion_apps_2/src/models/users_model.dart';
import 'package:programacion_apps_2/src/services/users_service.dart';
import 'package:programacion_apps_2/src/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UsuarioService _usuarioService = UsuarioService();
  List<Usuario>? _usuarios;

  @override
  void initState() {
    super.initState();
    _dowloandUsuarios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Usuarios"),),
      body: _usuarios == null ? const SizedBox.square(
        dimension: 50.00,
        child: CircularProgressIndicator(),
      ) : _usuarios!.isEmpty ? const Center( child: Text("No existen Usuarios"),)
      : ListView(
        children: _usuarios!.map((e)=>UsuarioWidget(model: e)).toList(),
      ),
    );
  }

  _dowloandUsuarios() async {
    _usuarios = await _usuarioService.getUsuarios();
    setState(() {});
  }
}