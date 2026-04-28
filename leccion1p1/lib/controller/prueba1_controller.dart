import '../model/prueba1_model.dart';

class NumberController {
  String procesar(String input) {
    try {
      //numeros ingresados en text box separados por comas (,)
      final numeros = input
          .split(',')
          .map((e) => int.parse(e.trim()))
          .toList();

      if (numeros.length != 100) {
        return "Se deben ingresar 100 numeros";
      }

      if (numeros.any((n) => n < 0)) {
        return "Debe ingresar numeros naturales (no negativos ni decimales)";
      }

      final resultado = ControlNumeros.calculos(numeros);

      return '''
        Resultados:
        Menores a 15: ${resultado.menoresDeQuince}
        Mayores a 50: ${resultado.mayoresDeCincuenta}
        Entre 25 y 45: ${resultado.dentroDeRango}
        Promedio: ${resultado.promedio}
        ''';
    } catch (e) {
      return "Ingrese valores validos (numeros naturales) separados por comas";
    }
  }

}