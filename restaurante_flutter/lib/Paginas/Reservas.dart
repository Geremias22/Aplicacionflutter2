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
  
  void accioGuardar(){
    setState(() {
      db.llsitaDades.add({
        "Nom": tecNom.text,
        "NumPers": tecNumPers,
        "Fecha": "tecFecha", 
        });
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
        backgroundColor:invert? Colors.black : Colors.white,
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: ancho,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 200, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 200, 0, 0), // Color de la sombra con opacidad
                          spreadRadius: 3, // Expansión de la sombra
                          blurRadius: 10, // Suavidad de la sombra
                          offset: Offset(0, 0), // Desplazamiento en X y Y
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Hacer reserva",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold, // Negrita
                          fontStyle: FontStyle.italic, // Cursiva
                          color: invert? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //---------
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      height: 460,
                      width: ancho,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 0, 0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 200, 0, 0), // Color de la sombra con opacidad
                            spreadRadius: 3, // Expansión de la sombra
                            blurRadius: 10, // Suavidad de la sombra
                            offset: Offset(0, 0), // Desplazamiento en X y Y
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Text(
                                  "Introduce los datos para completar la reserva",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color:invert ? Colors.white : Colors.black,
                                  ),
                                ),
                               ),
                            //textfild nom
                            InputText(textEtiqueta: "Nom", textHint: "Escribe el nombre", tecInput: tecNom, invert: invert,),

                            //textfild nom
                            InputText(textEtiqueta: "Numero de personas", textHint: "Escribe el numero de personas", tecInput: tecNumPers, invert: invert,),

                            //textfild nom
                            InputText(textEtiqueta: "Fecha de la reserva", textHint: "Escribe la fecha: 14/02/2025...", tecInput: tecFecha, invert: invert,),


                            //Boton para enviar datos
                            Padding(
                              padding: const EdgeInsets.only(top: 18, left: 40, right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Botones(textBoton: "Borrar", accionBoton: () => clearFormulary(tecNom, tecNumPers, tecFecha)),

                                  // FloatingActionButton(
                                  //   onPressed: () {
                                  //     Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(builder: (context) => Misreservas()),
                                  //     );
                                  //   },
                                  //   backgroundColor: Colors.red,
                                  //   foregroundColor: Colors.white,
                                  //   shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(15),
                                  //     side: BorderSide(color: Colors.white, width: 2),
                                  //   ),
                                  //   elevation: 10,
                                  //   child: Icon(Icons.list, size: 30),
                                  //   ),
                                ],
                              )
                              
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
