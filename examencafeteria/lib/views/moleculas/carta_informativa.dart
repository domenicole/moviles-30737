import 'package:flutter/material.dart';
import '../../temas/esquema_color.dart';
import '../atomos/etiqueta.dart';

class CartaInformativa extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String? etiquetaTexto;
  final TipoEtiqueta tipoEtiqueta;
  final IconData? icono;

  const CartaInformativa({
    super.key,
    required this.titulo,
    required this.descripcion,
    this.etiquetaTexto,
    this.tipoEtiqueta = TipoEtiqueta.normal,
    this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColoresApp.fondoClaro,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: ColoresApp.secundario.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (icono != null)
                  Icon(icono, color: ColoresApp.primario, size: 28),
                if (etiquetaTexto != null)
                  Etiqueta(texto: etiquetaTexto!, tipo: tipoEtiqueta),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              titulo,
              style: const TextStyle(
                fontFamily: 'Avenir',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColoresApp.textoPrincipal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              descripcion,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 14,
                color: ColoresApp.textoPrincipal.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
