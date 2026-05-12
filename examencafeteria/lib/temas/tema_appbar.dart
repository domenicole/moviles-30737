import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaAppbar {
  static final AppBarTheme estilo = AppBarTheme(
    backgroundColor: ColoresApp.cafeOsc,
    foregroundColor: ColoresApp.textoBlanco,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: const TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: ColoresApp.textoBlanco,
      letterSpacing: 1.5
    ),
  );
}
