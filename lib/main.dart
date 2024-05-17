import 'package:flutter/material.dart';

class Lugares {
  final String nombre;
  final String imagen;
  final String precio;
  final String detalles;

  Lugares({
    required this.nombre,
    required this.imagen,
    required this.precio,
    required this.detalles,
  });
}

// Soy consciente que los lugares no tienen mucho sentido :v
List<Lugares> lugaresList = [
  Lugares(
      nombre: 'Chucky Cheese',
      imagen: 'chuckycheese.jpg',
      precio: "s/. 500'000",
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Lugares(
      nombre: 'Detroit',
      imagen: 'detroit.jpg',
      precio: "s/. 600'000",
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Lugares(
      nombre: 'Ohio',
      imagen: 'ohio.jpg',
      precio: "s/. 500'000",
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Lugares(
      nombre: 'Pearl Harbor',
      imagen: 'pearlharbor.jpg',
      precio: "s/. 300'000",
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Lugares(
      nombre: 'Waffle House',
      imagen: 'wafflehouse.jpg',
      precio: "s/. 150'000",
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
              onTap: () {
                String imagen = lugaresList[index].imagen;
                String precio = lugaresList[index].precio;
                String detalles = lugaresList[index].detalles;
                String nombre = lugaresList[index].nombre;
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
            Text(
              'Precio: ${argumentos['precio']}',
              style: TextStyle(fontSize: 18, fontFamily: 'Danfo'),
            ),
            SizedBox(height: 10),
            Text(
              'Detalles: ${argumentos['detalles']}',
              style: TextStyle(fontSize: 12, fontFamily: 'RadioCanada'),
            ),
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
