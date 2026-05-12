import 'package:flutter/material.dart';
import '../../temas/esquema_color.dart';

enum TipoEtiqueta { normal, exito, error, acento }

class Etiqueta extends StatelessWidget {
  final String texto;
  final TipoEtiqueta tipo;

  const Etiqueta({
    super.key,
    required this.texto,
    this.tipo = TipoEtiqueta.normal,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;

    switch (tipo) {
      case TipoEtiqueta.exito:
        backgroundColor = ColoresApp.exito;
        textColor = ColoresApp.textoPrincipal;
        break;
      case TipoEtiqueta.error:
        backgroundColor = ColoresApp.error;
        textColor = Colors.white;
        break;
      case TipoEtiqueta.acento:
        backgroundColor = ColoresApp.acento;
        textColor = ColoresApp.textoPrincipal;
        break;
      default:
        backgroundColor = ColoresApp.secundario.withOpacity(0.2);
        textColor = ColoresApp.primario;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          fontFamily: 'Avenir',
        ),
      ),
    );
  }
}
