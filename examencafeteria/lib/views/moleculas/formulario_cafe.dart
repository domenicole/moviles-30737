import 'package:flutter/material.dart';

import '../atomos/campos_texto_personalizado.dart';
import '../atomos/boton_personalizado.dart';
import '../../temas/esquema_color.dart';
import '../atomos/etiqueta.dart';

class FormularioCafe extends StatelessWidget {

  final TextEditingController clienteCtrl;
  final TextEditingController cantidadCtrl;

  final String productoSeleccionado;
  final String tamanioSeleccionado;

  final Function(String?) alCambiarProducto;
  final Function(String?) alCambiarTamanio;

  final VoidCallback alEnviar;

  const FormularioCafe({
    super.key,
    required this.clienteCtrl,
    required this.cantidadCtrl,
    required this.productoSeleccionado,
    required this.tamanioSeleccionado,
    required this.alCambiarProducto,
    required this.alCambiarTamanio,
    required this.alEnviar,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColoresApp.fondoClaro,
        borderRadius: BorderRadius.circular(28),
      ),

      child: Column(
        children: [
          const Icon(
            Icons.coffee,
            size: 70,
            color: ColoresApp.cafeOsc,
          ),

          const SizedBox(height: 12),
          const Text(
            'Pedido Cafetería',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: ColoresApp.textoPrincipal,
            ),
          ),

          const SizedBox(height: 28),

          CampoTextoPersonalizado(
            etiqueta: 'Nombre del cliente',
            icono: Icons.person,
            controlador: clienteCtrl,
          ),

          const SizedBox(height: 18),

          DropdownButtonFormField<String>(

            value: productoSeleccionado,

            decoration: InputDecoration(
              labelText: 'Producto',
              prefixIcon: const Icon(Icons.local_cafe),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),

            items: const [

              DropdownMenuItem(
                value: 'Café',
                child: Text('Café'),
              ),

              DropdownMenuItem(
                value: 'Capuchino',
                child: Text('Capuchino'),
              ),

              DropdownMenuItem(
                value: 'Chocolate',
                child: Text('Chocolate'),
              ),

            ],

            onChanged: alCambiarProducto,
          ),

          const SizedBox(height: 18),

          DropdownButtonFormField<String>(

            value: tamanioSeleccionado,

            decoration: InputDecoration(
              labelText: 'Tamaño',
              prefixIcon: const Icon(Icons.coffee_maker),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),

            items: const [

              DropdownMenuItem(
                value: 'Pequeño',
                child: Text('Pequeño'),
              ),

              DropdownMenuItem(
                value: 'Mediano',
                child: Text('Mediano'),
              ),

              DropdownMenuItem(
                value: 'Grande',
                child: Text('Grande'),
              ),

            ],

            onChanged: alCambiarTamanio,
          ),

          const SizedBox(height: 18),

          CampoTextoPersonalizado(
            etiqueta: 'Cantidad',
            icono: Icons.numbers,
            controlador: cantidadCtrl,
          ),

          const SizedBox(height: 28),

          SizedBox(

            width: double.infinity,

            child: BotonPersonalizado(
              texto: 'Generar Nota',
              alPresionar: alEnviar,
            ),
          )
        ],
      ),
    );
  }
}