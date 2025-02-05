import 'package:flutter/material.dart';
import 'package:restaurante_flutter/Componentes/appBar.dart';
import 'package:restaurante_flutter/Componentes/drawerInicio.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarInicio(), // Se usa el AppBar corregido
      drawer: const DrawerInicio(), // Drawer correctamente ubicado
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset("lib/imagenes/logo.png", fit: BoxFit.fitWidth, width: 1970),
            const SizedBox(height: 20),
            const Text(
              "CARTA",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 200, 0, 0),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Abre el Drawer manualmente si no aparece el botón
              },
              child: const Text("Abrir Menú"),
            ),
          ],
        ),
      ),
    );
  }
}
