import 'package:flutter/material.dart';

class Animales {
  final String nombre;
  final String imagen;

  Animales({required this.nombre, required this.imagen});
}

List<Animales> animalesList = [
  Animales(nombre: 'Cocodrilo', imagen: 'cocodrilo.jpg'),
  Animales(nombre: 'Flamenco', imagen: 'flamenco.jpg'),
  Animales(nombre: 'Gato', imagen: 'gato.jpg'),
  Animales(nombre: 'Leon', imagen: 'leon.jpg'),
  Animales(nombre: 'Perro', imagen: 'perro.jpg'),
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
          title: Text('Animales'),
        ),
        body: ListView.builder(
          itemCount: animalesList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 100,
                child: Image.asset(
                  'assets/images/' + animalesList[index].imagen,
                ),
              ),
              title: Text(
                animalesList[index].nombre,
                style: TextStyle(fontSize: 18.0, fontFamily: 'Lato'),
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
