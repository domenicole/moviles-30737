import 'package:flutter/material.dart';
import '../atomos/etiqueta.dart';
import '../../models/pedido_cafe_model.dart';
import '../moleculas/carta_informativa.dart';
import '../../../temas/index.dart';

class VistaNotaVentaCafe extends StatelessWidget {

  const VistaNotaVentaCafe({super.key});

  @override
  Widget build(BuildContext context) {

    final pedido =
    ModalRoute.of(context)!.settings.arguments
    as PedidoCafeModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTA DE VENTA'),
      ),
      body: Container(
        width: double.infinity,
        decoration: TemaFondos.fondoGris,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CartaInformativa(
                titulo: 'Cliente',
                descripcion: pedido.nombreCliente,
                etiquetaTexto: 'CAFETERÍA',
                tipoEtiqueta: TipoEtiqueta.acento,
                icono: Icons.person,
              ),
              const SizedBox(height: 18),
              CartaInformativa(
                titulo: 'Producto',
                descripcion:
                '${pedido.producto} - ${pedido.tamanio}',
                etiquetaTexto:
                '${pedido.cantidad} unidades',
                tipoEtiqueta: TipoEtiqueta.exito,
                icono: Icons.local_cafe,
              ),

              const SizedBox(height: 18),
              CartaInformativa(
                titulo: 'Subtotal',
                descripcion:
                '\$${pedido.calcularSubtotal().toStringAsFixed(2)}',
                etiquetaTexto: '15% IVA',
                tipoEtiqueta: TipoEtiqueta.normal,
                icono: Icons.receipt_long,
              ),
              const SizedBox(height: 18),
              CartaInformativa(
                titulo: 'IVA',
                descripcion:
                '\$${pedido.calcularIva().toStringAsFixed(2)}',
                etiquetaTexto: 'IMPUESTO',
                tipoEtiqueta: TipoEtiqueta.acento,
                icono: Icons.attach_money,
              ),
              const SizedBox(height: 18),
              CartaInformativa(
                titulo: 'TOTAL A PAGAR',
                descripcion:
                '\$${pedido.calcularTotal().toStringAsFixed(2)}',
                etiquetaTexto: 'TOTAL',
                tipoEtiqueta: TipoEtiqueta.exito,
                icono: Icons.payments,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Nuevo Pedido'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}