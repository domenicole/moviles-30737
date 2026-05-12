import 'package:flutter/material.dart';
import 'tipografia.dart';
import 'esquema_color.dart';
import 'tema_botones.dart';
import 'tema_fondos.dart';
import 'tema_formulario.dart';
import 'tema_appbar.dart';

class TemaGeneral {
  static ThemeData claro = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: ColoresApp.primario,
      secondary: ColoresApp.secundario,
      surface: ColoresApp.fondoClaro,
      error: ColoresApp.error,
      onPrimary: ColoresApp.textoBlanco,
      onSecondary: ColoresApp.textoPrincipal,
      onSurface: ColoresApp.textoPrincipal,
    ),
    textTheme: TipografiaApp.texto,
    appBarTheme: TemaAppbar.estilo,
    elevatedButtonTheme: TemaBotones.botonPrincipal,
    outlinedButtonTheme: TemaBotones.botonSecundario,
    inputDecorationTheme: TemaFormulario.camposTexto,
    scaffoldBackgroundColor: ColoresApp.fondo,
  );
}