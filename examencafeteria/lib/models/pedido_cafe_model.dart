import '../controllers/cafe_controller.dart';

class PedidoCafeModel {

  final String nombreCliente;
  final String producto;
  final String tamanio;
  final int cantidad;

  PedidoCafeModel({
    required this.nombreCliente,
    required this.producto,
    required this.tamanio,
    required this.cantidad,
  });

  // SUBTOTAL
  double calcularSubtotal() {

    double precioProducto =
    CafeController.obtenerPrecioProducto(producto);

    double adicionalTamanio =
    CafeController.obtenerAdicionalTamanio(tamanio);

    double precioFinal = precioProducto + adicionalTamanio;

    return precioFinal * cantidad;
  }

  // IVA
  double calcularIva() {
    return calcularSubtotal() * 0.15;
  }

  // TOTAL
  double calcularTotal() {
    return calcularSubtotal() + calcularIva();
  }
}