import 'package:flutter/material.dart';
import 'package:programacion_apps_2/src/pages/home_page.dart';
import 'package:programacion_apps_2/src/pages/produc_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Index"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text("Ir a otra pantalla")
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> const ProductPage(nombre: "Kevin",))
              );
            }, child: const Text("Navegar Pasar Parámetros"))
          ],
        ),
      ),

    );
  }
}
