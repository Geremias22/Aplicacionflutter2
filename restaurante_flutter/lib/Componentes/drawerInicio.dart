import 'package:flutter/material.dart';
import 'package:restaurante_flutter/Paginas/Reservas.dart';

class DrawerInicio extends StatelessWidget {
  const DrawerInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: Text(
              "Menú Principal",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio"),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.note_alt_outlined),
            title: const Text("Reservar"),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Reservas()), // Navega a MisReservas.dart
            );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Mis Reservas"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
