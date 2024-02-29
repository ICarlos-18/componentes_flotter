import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';
class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasTexto(),
            entradaSwitch(),
            entradaSlider(),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Guardar',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Color.fromARGB(255, 247, 247, 247),),
            label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list,
              color: Color.fromARGB(255, 255, 255, 255),),
             label: "Datos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app,
              color: Color.fromARGB(255, 250, 250, 250),),
             label: "Salir", 
            ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodySmall
      ),
    );
  }

  TextField entradasTexto() {
    return TextField(
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }
  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(

        ),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(width: 25.0,),
        Switch(
          value: valueSwitch, 
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              print('Estado del switch: $valueSwitch');
            });
          },
        ),
      ],
    );
  }
  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Que tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider, 
          activeColor: const Color.fromARGB(224, 9, 109, 149),
          inactiveColor: Color.fromARGB(199, 3, 129, 154),
          thumbColor: Colors.cyanAccent,
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged: (value) {
            setState(() {
              valueSlider = value;
              print('Valor del slider: $valueSlider');
            });
          },
        ),
      ],
    );
  }
}