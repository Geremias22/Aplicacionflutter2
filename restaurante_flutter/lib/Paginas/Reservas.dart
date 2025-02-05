import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:restaurante_flutter/Componentes/Botones.dart';
import 'package:restaurante_flutter/Componentes/input_text.dart';
import 'package:restaurante_flutter/Paginas/MisReservas.dart';
import 'package:restaurante_flutter/data/base_de_datos.dart';

class Reservas extends StatefulWidget {

const Reservas({super.key,});

 @override
  State<Reservas> createState() => _ReservasState();
}

  class _ReservasState extends State<Reservas> {
  final bool invert = true;
  final double ancho = 500;

  TextEditingController tecNom = TextEditingController();
  TextEditingController tecNumPers = TextEditingController();
  TextEditingController tecFecha = TextEditingController();

   final Box _boxHive = Hive.box("box_lista_reserva");
  BaseDeDatos db = BaseDeDatos();
  
  void accioGuardar() {
  setState(() {
    final nuevaReserva = {
      "Nom": tecNom.text,
      "NumPers": tecNumPers.text,
      "Fecha": tecFecha.text, // Quité las comillas para usar el valor real
    };

    // Agregar los datos a la base de datos Hive
    db.llsitaDades.add(nuevaReserva);
    _boxHive.put("lista_reservas", db.llsitaDades);

    // Limpiar el formulario después de guardar
    clearFormulary(tecNom, tecNumPers, tecFecha);
  });
}
  

  void clearFormulary (TextEditingController tecNom, TextEditingController tecNumPers,TextEditingController tecFecha ){
    tecNom.clear();
    tecNumPers.clear();
    tecFecha.clear();
  }

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: invert ? Colors.black : Colors.white,
      body: Center(
        child: SingleChildScrollView( // Permite hacer scroll
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Se ajusta al contenido
              children: [
                // Título
                Container(
                  height: 100,
                  width: ancho,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 200, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 200, 0, 0),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Hacer reserva",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: invert ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30), // Espaciado entre elementos
                
                // Formulario dentro de un contenedor con scroll
                Container(
                  width: ancho,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 200, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 200, 0, 0),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Introduce los datos para completar la reserva",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: invert ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      // Campos de entrada
                      InputText(
                        textEtiqueta: "Nom",
                        textHint: "Escribe el nombre",
                        tecInput: tecNom,
                        invert: invert,
                      ),
                      InputText(
                        textEtiqueta: "Numero de personas",
                        textHint: "Escribe el numero de personas",
                        tecInput: tecNumPers,
                        invert: invert,
                      ),
                      InputText(
                        textEtiqueta: "Fecha de la reserva",
                        textHint: "Escribe la fecha: 14/02/2025...",
                        tecInput: tecFecha,
                        invert: invert,
                      ),

                      // Espaciado
                      const SizedBox(height: 20),

                      // Botones
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Botones(
                            textBoton: "Borrar",
                            accionBoton: () => clearFormulary(
                                tecNom, tecNumPers, tecFecha),
                          ),
                          Botones(
                            textBoton: "Enviar reserva",
                            accionBoton: () => accioGuardar(),
                          ),

                          FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Misreservas()),
                            );
                          },
                          backgroundColor: const Color.fromARGB(255, 200, 0, 0),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(color: Colors.white, width: 2),
                          ),
                          elevation: 10,
                          child: Icon(Icons.list, size: 30),
                        ),
                        ],
                      ),

                     

                     
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

  }

