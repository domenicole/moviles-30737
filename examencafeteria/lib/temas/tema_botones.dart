import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaBotones {
  //boton principal
  static final botonPrincipal = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColoresApp.cafe,
      foregroundColor: ColoresApp.textoBlanco,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 16
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
    )
  );

  //boton secundario
  static final botonSecundario = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColoresApp.secundario,
      side: BorderSide(color: ColoresApp.primario),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    )
  );
}