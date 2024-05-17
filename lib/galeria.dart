import 'package:flutter/material.dart';
import 'listas.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                final String imagePath =
                    'assets/images/' + lugaresList[index].imagen;
                Widget imageWidget;
                Widget textoWidget;
                if (imagePath.endsWith('.svg')) {
                  imageWidget = SvgPicture.asset(imagePath);
                  textoWidget = Text(
                    lugaresList[index].nombre,
                    style:
                        TextStyle(fontSize: 18.0, fontFamily: 'Roboto-Black'),
                  );
                } else {
                  imageWidget = Image.asset(imagePath);
                  textoWidget = Text(
                    lugaresList[index].nombre,
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
                  );
                }
                return ListTile(
                  leading: Container(
                    width: 100,
                    child: imageWidget,
                  ),
                  title: textoWidget,
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
                final String imagePath =
                    'assets/images/' + animalesList[index].imagen;
                Widget imageWidget;
                Widget textoWidget;
                if (imagePath.endsWith('.svg')) {
                  imageWidget = SvgPicture.asset(imagePath);
                  textoWidget = Text(
                    animalesList[index].nombre,
                    style:
                        TextStyle(fontSize: 18.0, fontFamily: 'Roboto-Black'),
                  );
                } else {
                  imageWidget = Image.asset(imagePath);
                  textoWidget = Text(
                    animalesList[index].nombre,
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
                  );
                }
                return ListTile(
                  leading: Container(width: 100, child: imageWidget),
                  title: textoWidget,
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
                final String imagePath =
                    'assets/images/' + comidasList[index].imagen;
                Widget imageWidget;
                Widget textoWidget;
                if (imagePath.endsWith('.svg')) {
                  imageWidget = SvgPicture.asset(imagePath);
                  textoWidget = Text(
                    animalesList[index].nombre,
                    style:
                        TextStyle(fontSize: 18.0, fontFamily: 'Roboto-Black'),
                  );
                } else {
                  imageWidget = Image.asset(imagePath);
                  textoWidget = Text(
                    animalesList[index].nombre,
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Ubuntu'),
                  );
                }
                return ListTile(
                  leading: Container(width: 100, child: imageWidget),
                  title: textoWidget,
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
