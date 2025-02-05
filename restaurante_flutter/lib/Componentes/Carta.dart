import 'package:flutter/material.dart';

class Carta extends StatelessWidget {
  const Carta({super.key});

  @override
  Widget build(BuildContext context) {
    List productosCarta = [
      { "nom": "Holy Cheeseburger", "img": "lib/imagenes/cheeseburger.jpg", "desc": "La clásica, pero con el toque 'santo' de la marca. Una cheeseburger icónica con nuestro estilo único."},
      { "nom": "Inferno Bacon", "img": "lib/imagenes/infernoBacon", "desc": "Inspirada en el fuego del infierno, esta hamburguesa combina el toque picante con una explosión de bacon crujiente."},
      { "nom": "Sacred Truffle", "img": "lib/imagenes/trufa.jpg", "desc": "Lo sagrado y lo exclusivo se unen en esta burger con trufa, elevando su sabor a otro nivel."},
      { "nom": "Blessed BBQ", "img": "lib/imagenes/", "desc": "Bendecida con la mejor salsa barbacoa, un sabor ahumado irresistible que te hará sentir en el paraíso."},
      { "nom": "Divine Smash", "img": "lib/imagenes/", "desc": "Inspirada en la técnica smash, con carne jugosa y una costra perfecta, esta burger es simplemente divina."},
      { "nom": "Saint Crispy Chicken", "img": "lib/imagenes/", "desc": "Un homenaje a los santos sabores del pollo crujiente con un rebozado dorado y perfecto."},
      { "nom": "Heavenly Vegan", "img": "lib/imagenes/", "desc": "Porque incluso en el cielo hay opciones veganas, esta burger ofrece un sabor celestial sin carne."},
      { "nom": "Apocalipsis Burger", "img": "lib/imagenes/", "desc": "El fin de los tiempos llega con esta burger cargada con todo lo posible: doble carne, triple queso, bacon y más."},
      { "nom": "Black Angus Miracle", "img": "lib/imagenes/angus.jpg", "desc": "Un verdadero milagro de sabor, con carne Black Angus premium y un toque gourmet irresistible."}
    ];

    return Padding(
      padding: const EdgeInsets.all(50),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 🔥 3 hamburguesas por fila
          crossAxisSpacing: 10, // Espacio entre columnas
          mainAxisSpacing: 10, // Espacio entre filas
          childAspectRatio: 0.8, // Ajusta la altura de las tarjetas
        ),
        itemCount: productosCarta.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 200, 0, 0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      productosCarta[index]["img"],
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    productosCarta[index]["nom"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      productosCarta[index]["desc"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
