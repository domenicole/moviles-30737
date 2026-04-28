import 'package:flutter/material.dart';
import 'controller/prueba1_controller.dart';
import 'model/prueba1_model.dart';
import 'view/prueba1_view.dart';


void main (){
  runApp(NumerosPagina());
}

class NumerosPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculo Numeros',
      theme: ThemeData(primaryColor: Colors.purple),
      home: NumerosPage(),
    );
  }
}