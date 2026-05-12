import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFondos {
  static const BoxDecoration degradadoPrincipal = BoxDecoration(
    gradient: LinearGradient(
      colors: [ColoresApp.beige, ColoresApp.acento, ColoresApp.cafe],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static const BoxDecoration fondoBlanco = BoxDecoration(
    color: Colors.white,
  );

  static const BoxDecoration fondoGris = BoxDecoration(
    color: Colors.white54,
  );
}