import 'package:flutter/material.dart';
import '../../controllers/cafe_controller.dart';
import '../../models/pedido_cafe_model.dart';
import '../moleculas/formulario_cafe.dart';
import '../../../temas/index.dart';

class VistaCafe extends StatefulWidget {

  const VistaCafe({super.key});

  @override
  State<VistaCafe> createState() => _VistaCafeState();
}

class _VistaCafeState extends State<VistaCafe> {
  final clienteCtrl = TextEditingController();
  final cantidadCtrl = TextEditingController();
  final controlador = CafeController();

  String productoSeleccionado = 'Café';
  String tamanioSeleccionado = 'Pequeño';

  void generarPedido(){
    final validacion = controlador.validar(
      clienteCtrl.text,
      cantidadCtrl.text,
    );

    if(validacion != 'OK'){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(validacion)),
      );
      return;
    }

    final pedido = controlador.crearPedido(
      clienteCtrl.text,
      productoSeleccionado,
      tamanioSeleccionado,
      cantidadCtrl.text,
    );

    Navigator.pushNamed(
      context,
      '/notaVentaCafe',
      arguments: pedido,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('CAFETERÍA'),
      ),
      body: Container(
        decoration: TemaFondos.degradadoPrincipal,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: FormularioCafe(
              clienteCtrl: clienteCtrl,
              cantidadCtrl: cantidadCtrl,
              productoSeleccionado: productoSeleccionado,
              tamanioSeleccionado: tamanioSeleccionado,
              alCambiarProducto: (valor){
                setState(() {
                  productoSeleccionado = valor!;
                });
              },

              alCambiarTamanio: (valor){
                setState(() {
                  tamanioSeleccionado = valor!;
                });
              },
              alEnviar: generarPedido,
            ),
          ),
        ),
      ),
    );
  }
}