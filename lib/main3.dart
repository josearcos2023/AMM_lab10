import 'package:flutter/material.dart';
import 'listas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/detalles": (context) => DetailsPage()},
      title: 'Laboratorio 10',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Comidas')),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Ir a tabla completa'),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
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
                      style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
                    ),
                    onTap: () {
                      String imagen = comidasList[index].imagen;
                      String precio = comidasList[index].precio;
                      String detalles = comidasList[index].detalles;
                      String nombre = comidasList[index].nombre;
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
            )
          ],
        ));
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
