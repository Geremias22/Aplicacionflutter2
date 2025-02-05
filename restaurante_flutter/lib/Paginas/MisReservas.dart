import 'package:flutter/material.dart';

class Misreservas extends StatelessWidget {
  final List dadesRebudes;

  const Misreservas({super.key, 
  required this.dadesRebudes});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount: dadesRebudes.length, itemBuilder: (context, index){
        // return Text("": dadesRebudes[index].toString());
        return ListTile(
            title: Text(dadesRebudes[index]),
          );
      })
    );
  }
}