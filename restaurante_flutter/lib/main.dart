import 'package:flutter/material.dart';
import 'Paginas/Reservas.dart';

void main() {
  runApp(const MainApp());
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }



class MainApp extends StatelessWidget {
  
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Reservas(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final String textEtiqueta;
  //   final String? textHint;
  //   final TextEditingController tecInput; 

  //   textEtiqueta = "";
  //   textHint = "";
    
  //   return MaterialApp(
  //     home: Scaffold(
  //       backgroundColor: Colors.black,
  //       body: Center(
  //         child: Container(
  //           child: Padding(
  //             padding: const EdgeInsets.all(50.0),
  //             child: Column(
  //               children: [
  //                 Container(
  //                   height: 100,
  //                   decoration: BoxDecoration(
  //                     color: Colors.red,
  //                     borderRadius: BorderRadius.circular(20),
  //                     boxShadow: const [
  //                       BoxShadow(
  //                         color: Colors.red, // Color de la sombra con opacidad
  //                         spreadRadius: 3, // Expansión de la sombra
  //                         blurRadius: 10, // Suavidad de la sombra
  //                         offset: Offset(0,0), // Desplazamiento en X y Y
  //                       ),
  //                     ],
  //                   ),
  //                   child: const Center(
  //                     child: Text(
  //                       "Hacer reserva",
  //                       style: TextStyle(
  //                         fontSize: 35,
  //                         fontWeight: FontWeight.bold, // Negrita
  //                         fontStyle: FontStyle.italic, // Cursiva
  //                         color: Colors.white,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 //---------
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 60),
  //                   child: Container(
  //                     height: 440,
  //                     width: 350,
  //                     decoration: BoxDecoration(
  //                       color: Colors.red,
  //                       borderRadius: BorderRadius.circular(20),
  //                       boxShadow: const [
  //                         BoxShadow(
  //                           color: Colors.red, // Color de la sombra con opacidad
  //                           spreadRadius: 3, // Expansión de la sombra
  //                           blurRadius: 10, // Suavidad de la sombra
  //                           offset: Offset(0,0), // Desplazamiento en X y Y
  //                         ),
  //                       ],
  //                     ),
  //                     child: const Column(
  //                       children: [
  //                         Padding(
  //                           padding: const EdgeInsets.only(left: 20),
  //                           child: Text(
  //                             "Nombre", style: const 
  //                             TextStyle(
  //                               fontWeight: FontWeight.bold,
  //                               fontSize: 20,
  //                               color: Color.fromARGB(255, 0, 0, 0),
  //                             ),
  //                           ),
  //                         ),
  //                         TextField(
  //                           controller: tecInput,
  //                           style: TextStyle( color: Colors.teal),
  //                           cursorColor: Colors.teal,
  //                           decoration: InputDecoration(
  //                             fillColor: Colors.white,
  //                             filled: true,
  //                             hintText: textHint,
  //                             hintStyle: TextStyle(
  //                               color: const Color.fromARGB(255, 146, 83, 255),
  //                               fontStyle: FontStyle.italic,
  //                             ),
  //                             enabledBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(40),
  //                               borderSide: BorderSide(
  //                                 color: Color.fromARGB(255, 133, 39, 255),
  //                                 width: 4,                      
  //                               ),
  //                             ),
  //                             focusedBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(10),
  //                               borderSide: BorderSide(
  //                                 color: Color.fromARGB(255, 133, 39, 255),
  //                                 width: 4
  //                             ),
  //                             ),

  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
