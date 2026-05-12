import 'package:flutter/material.dart';
import 'views/paginas/vista_cafe.dart';
import 'views/paginas/vista_nota_venta_cafe.dart';
import 'temas/index.dart';

void main() {
  runApp(const CafeteriaApp());
}

class CafeteriaApp extends StatelessWidget {
  const CafeteriaApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafetería',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: TemaAppbar.estilo,
        elevatedButtonTheme: TemaBotones.botonPrincipal,
        inputDecorationTheme: TemaFormulario.camposTexto,
        textTheme: TipografiaApp.texto,
      ),

      // ruta principal
      initialRoute: '/cafe',

      // rutas
      routes: {
        '/cafe': (context) => const VistaCafe(),
        '/notaVentaCafe': (context) =>
        const VistaNotaVentaCafe(),
      },
    );
  }
}