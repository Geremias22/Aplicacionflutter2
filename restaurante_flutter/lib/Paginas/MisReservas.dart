import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Misreservas extends StatefulWidget {
  const Misreservas({super.key});

  @override
  _MisreservasState createState() => _MisreservasState();
}

class _MisreservasState extends State<Misreservas> {
  final Box _boxHive = Hive.box("box_lista_reserva");
  List reservas = [];

  @override
  void initState() {
    super.initState();
    _cargarReservas();
  }

  void _cargarReservas() {
    final datosGuardados = _boxHive.get("lista_reservas", defaultValue: []);
    setState(() {
      reservas = List.from(datosGuardados);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mis Reservas")),
      body: reservas.isEmpty
          ? Center(child: Text("No hay reservas guardadas"))
          : ListView.builder(
              itemCount: reservas.length,
              itemBuilder: (context, index) {
                final reserva = reservas[index];
                return ListTile(
                  title: Text("Nombre: ${reserva["Nom"]}"),
                  subtitle: Text(
                      "Personas: ${reserva["NumPers"]} - Fecha: ${reserva["Fecha"]}"),
                );
              },
            ),
    );
  }
}
