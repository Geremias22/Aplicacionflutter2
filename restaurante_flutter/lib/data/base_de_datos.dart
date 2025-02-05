import 'package:hive/hive.dart';

class BaseDeDatos{

  List llsitaDades = [];

  final Box _boxDeLaHive = Hive.box("box_lista_reserva");


  void carregarDades(){
    llsitaDades = _boxDeLaHive.get("box_lista_reserva");

  }

  void actualizarDades(){
    _boxDeLaHive.put("box_lista_reserva", llsitaDades);
  }


  void crearDadesExemple(){
    llsitaDades = [
      {"titul": "tasca:1", "valor": false},
      {"titul": "tasca:2", "valor": true},
      {"titul": "tasca:3", "valor": true},
    ];
  }
}