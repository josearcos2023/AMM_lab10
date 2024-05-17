import 'package:flutter/material.dart';
import 'listas.dart';

class GaleriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria de imágenes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lugares',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
            SizedBox(height: 20),
            Text('Animales',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
                  onTap: () {},
                );
              },
            ),
            SizedBox(height: 20),
            Text('Comidas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
