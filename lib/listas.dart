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
      imagen: 'gato.svg',
      precio: '\$1500',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Animales(
      nombre: 'Leon',
      imagen: 'leon.svg',
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

class Comidas {
  final String nombre;
  final String imagen;
  final String precio;
  final String detalles;

  Comidas({
    required this.nombre,
    required this.imagen,
    required this.precio,
    required this.detalles,
  });
}

List<Comidas> comidasList = [
  Comidas(
      nombre: 'Anticuchos',
      imagen: 'anticuchos.jpg',
      precio: 's/. 30',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Comidas(
      nombre: 'Arroz con Pollo',
      imagen: 'arrozConPollo.jpg',
      precio: 's/. 25',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Comidas(
      nombre: 'Chaufa',
      imagen: 'chaufa.jpg',
      precio: 's/. 25',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Comidas(
      nombre: 'Milanesas',
      imagen: 'milanesas.jpg',
      precio: 's/. 20',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
  Comidas(
      nombre: 'Patasca',
      imagen: 'patasca.jpeg',
      precio: 's/. 30',
      detalles:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus gravida erat accumsan euismod. Sed et venenatis dui, a condimentum lectus. Aliquam at dolor dictum, euismod diam ornare, dapibus orci. Aliquam luctus ipsum a arcu euismod iaculis vitae a nunc. Donec at bibendum libero. Donec laoreet neque vitae nulla commodo, at molestie orci dignissim. Fusce pellentesque tincidunt tortor ut efficitur.'),
];
