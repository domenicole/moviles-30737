import 'package:flutter/material.dart';
import '../controller/prueba1_controller.dart';

//1. Átomos
class Label extends StatelessWidget{
  final String text;
  //contructor
  Label(this.text,{super.key});

  @override
  Widget build(BuildContext context) =>
      Text(text, style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),);
}

// number field
class NumberField extends StatelessWidget{
  final TextEditingController controller;
  final String hint;

  NumberField({super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    keyboardType: TextInputType.text,
    maxLines: 3,
    decoration: InputDecoration(
      labelText: hint,
      border: OutlineInputBorder(),
    ),
  );
}

//boton
class PrimaryButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;

  PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
  );
}


//3. Organismo
class AnalisisCard extends StatefulWidget{
  AnalisisCard({super.key});

  @override
  State<StatefulWidget> createState() => _AnalisisCardState();

}

class _AnalisisCardState extends State<AnalisisCard>{
  final _input= TextEditingController();
  final _controller=NumberController();
  String _resultado='';

  void _calcular(){
    setState(() {
      _resultado = _controller.procesar(_input.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Label('Ingrese 100 numeros naturales separados por comas: '),
              SizedBox(height: 10,),
              NumberField(controller: _input, hint: 'Ej: 1,2,3,...'),
              SizedBox(height: 10,),
              PrimaryButton(text: 'Calcular', onPressed: _calcular,),
              SizedBox(height: 10,),
              Label(_resultado),
              Text(_resultado),
            ],
          ),
        ),
      ),
    );
  }
}

//4. pagina
class NumerosPage extends StatelessWidget{
  NumerosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculos de Numeros'),backgroundColor: Colors.cyan),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: AnalisisCard(),
      ),
    );
  }



}