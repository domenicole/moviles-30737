import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tema_botones.dart';
import 'tipografia.dart';

class TemaFormulario {
  static final camposTexto = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(
      color: Colors.black12,
      fontFamily: TipografiaApp.fuentePrincipal,
    ),
    prefixIconColor: ColoresApp.primario,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColoresApp.primario),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: ColoresApp.primario, width: 4)
    ),
  );
}
