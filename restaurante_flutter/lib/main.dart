import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:restaurante_flutter/Paginas/inicio.dart'; // Asegúrate de importar Inicio.dart

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("box_lista_reserva");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de debug
      title: 'Holy Burgers',
      theme: ThemeData.dark(),
      home: const Inicio(), // Aquí se usa Inicio() correctamente
    );
  }
}
