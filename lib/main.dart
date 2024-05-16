import 'package:flutter/material.dart';

class Lugares {
  final String nombre;
  final String imagen;

  Lugares({required this.nombre, required this.imagen});
}

List<Lugares> lugaresList = [
  Lugares(nombre: 'Chucky Cheese', imagen: 'chuckycheese.jpg'),
  Lugares(nombre: 'Detroit', imagen: 'detroit.jpg'),
  Lugares(nombre: 'Ohio', imagen: 'ohio.jpg'),
  Lugares(nombre: 'Pearl Harbor', imagen: 'pearlharbor.jpg'),
  Lugares(nombre: 'Waffle House', imagen: 'wafflehouse.jpg'),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laboratorio 10',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lugares'),
        ),
        body: ListView.builder(
          itemCount: lugaresList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 100,
                child: Image.asset(
                  'assets/images/' + lugaresList[index].imagen,
                ),
              ),
              title: Text(
                lugaresList[index].nombre,
                style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
