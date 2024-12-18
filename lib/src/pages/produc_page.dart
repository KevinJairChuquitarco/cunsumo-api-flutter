import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String nombre;
  const ProductPage({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Productos"),
        )
      ,body: Center(
        child: Column(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
        }, icon: const Icon(Icons.music_note)),
        Text(nombre)
          ],
        )
      ),
      );
  }
}
