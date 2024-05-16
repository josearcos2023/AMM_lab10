import 'package:flutter/material.dart';

class Comidas {
  final String nombre;
  final String imagen;

  Comidas({required this.nombre, required this.imagen});
}

List<Comidas> comidasList = [
  Comidas(nombre: 'Anticuchos', imagen: 'anticuchos.jpg'),
  Comidas(nombre: 'Arroz con Pollo', imagen: 'arrozConPollo.jpg'),
  Comidas(nombre: 'Chaufa', imagen: 'chaufa.jpg'),
  Comidas(nombre: 'Milanesas', imagen: 'milanesas.jpg'),
  Comidas(nombre: 'Patasca', imagen: 'patasca.jpeg'),
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
          title: Text('Comidas'),
        ),
        body: ListView.builder(
          itemCount: comidasList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 100,
                child: Image.asset(
                  'assets/images/' + comidasList[index].imagen,
                ),
              ),
              title: Text(
                comidasList[index].nombre,
                style: TextStyle(fontSize: 18.0, fontFamily: 'OpenSans'),
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
