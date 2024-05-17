import 'package:flutter/material.dart';

class Animales {
  final String nombre;
  final String imagen;
  final String precio;
  final String detalles;

  Animales({
    required this.nombre,
    required this.imagen,
    required this.precio,
    required this.detalles,
  });
}

List<Animales> animalesList = [
  Animales(
      nombre: 'Cocodrilo',
      imagen: 'cocodrilo.jpg',
      precio: "\$1500",
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Animales(
      nombre: 'Flamenco',
      imagen: 'flamenco.jpg',
      precio: '\$1500',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Animales(
      nombre: 'Gato',
      imagen: 'gato.jpg',
      precio: '\$1500',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Animales(
      nombre: 'Leon',
      imagen: 'leon.jpg',
      precio: '\$1500',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Animales(
      nombre: 'Perro',
      imagen: 'perro.jpg',
      precio: '\$1500',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/detalles": (context) => DetailsPage()},
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
                style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
              ),
              onTap: () {
                String imagen = animalesList[index].imagen;
                String precio = animalesList[index].precio;
                String detalles = animalesList[index].detalles;
                String nombre = animalesList[index].nombre;
                Navigator.pushNamed(context, '/detalles', arguments: {
                  'precio': precio,
                  'detalles': detalles,
                  'imagen': imagen,
                  'nombre': nombre,
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${argumentos['nombre']}',
              style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),
            ),
            Image.asset('assets/images/${argumentos['imagen']}'),
            SizedBox(height: 10),
            Text('Precio: ${argumentos['precio']}',
                style: TextStyle(fontSize: 18, fontFamily: 'Danfo')),
            SizedBox(height: 10),
            Text('Detalles: ${argumentos['detalles']}',
                style: TextStyle(fontSize: 12, fontFamily: 'RadioCanada')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Volver a la primera página
                Navigator.pop(context);
              },
              child: Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
