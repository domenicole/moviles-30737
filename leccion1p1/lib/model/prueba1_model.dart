class ControlNumeros {
  final int menoresDeQuince;
  final int mayoresDeCincuenta;
  final int dentroDeRango;
  final double promedio;

  //constructor
  ControlNumeros({
    required this.menoresDeQuince,
    required this.mayoresDeCincuenta,
    required this.dentroDeRango,
    required this.promedio
  });

  //metodo
  static ControlNumeros calculos(List<int> numeros){
    int menores = 0;
    int mayores = 0;
    int dentro = 0;
    int suma = 0;

    //ciclo que recorre la lista para verificar reglas
    for (int n in numeros){
      if (n < 15) menores++;
      if (n > 50) mayores++;
      if (n >= 25 && n <= 45) dentro++;
      suma += n;
    }

    double promedio = suma / numeros.length;

    return ControlNumeros(
        menoresDeQuince: menores,
        mayoresDeCincuenta: mayores,
        dentroDeRango: dentro,
        promedio: promedio);
  }
}