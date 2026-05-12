import '../models/pedido_cafe_model.dart';

class CafeController {

  // Validaciones
  String validar(
      String nombre,
      String cantidadTexto,
      ) {
  //campos vacíos
    if(nombre.trim().isEmpty){
      return 'Ingrese el nombre';
    }

    if(cantidadTexto.isEmpty){
      return 'Ingrese la cantidad';
    }
  //convertir cantidad a entero
    final cantidad = int.tryParse(cantidadTexto);

    if(cantidad == null){
      return 'Cantidad inválida';
    }
  //cantidad mayor a 0
    if(cantidad <= 0){
      return 'La cantidad debe ser mayor a 0';
    }

    return 'OK';
  }

  // Asignación de precios
  static double obtenerPrecioProducto(String producto){

    switch(producto){

      case 'Café':
        return 1.50;

      case 'Capuchino':
        return 3.00;

      case 'Chocolate':
        return 3.50;

      default:
        return 0;
    }
  }

  // Extra según tamaño
  static double obtenerAdicionalTamanio(String tamanio){

    switch(tamanio){
      case 'Pequeño':
        return 0;
      case 'Mediano':
        return 0.50;
      case 'Grande':
        return 1.00;
      default:
        return 0;
    }
  }

  // Creación de pedido
  PedidoCafeModel crearPedido(
      String nombre,
      String producto,
      String tamanio,
      String cantidadTexto,
      ){

    return PedidoCafeModel(
      nombreCliente: nombre,
      producto: producto,
      tamanio: tamanio,
      cantidad: int.parse(cantidadTexto),
    );
  }
}