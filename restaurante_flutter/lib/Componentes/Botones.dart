import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  final String textBoton;
  final Function() accionBoton;

  const Botones({super.key, 
    required this.textBoton, 
    required this.accionBoton
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: accionBoton,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 200, 0, 0),
          borderRadius: BorderRadius.circular(20), 
          border: Border.all(
            color: Colors.black,
            width: 3
          )
          
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20,),
          child: Text(
            textBoton, 
            style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 3
          ),
          ),
        ),
      ),
    );
  }
}