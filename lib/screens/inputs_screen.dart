import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';
class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOpction = 0; // Para los RadioButton
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
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
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

  Column entradasRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para desarrollo movil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOpction,
              onChanged: (value){
                setState(() {
                  selectedRadioOpction = value!;
                  print('Opción seleccionada: $selectedRadioOpction');
                });
              },),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOpction,
              onChanged: (value){
                setState(() {
                  selectedRadioOpction = value!;
                  print('Opción seleccionada: $selectedRadioOpction');
                });
              },),
          ),
        ),
      ],
    );
  }

  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked1, 
          onChanged: (value){
            setState(() {
              isChecked1 = value!;
              print('Valor de navegador: $isChecked1');
            });
          },
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked2, 
          onChanged: (value){
            setState(() {
              isChecked2 = value!;
              print('Valor de Emulador: $isChecked2');
            });
          },
        ),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked3, 
          onChanged: (value){
            setState(() {
              isChecked3 = value!;
              print('Valor de navegador: $isChecked3');
            });
          },
        ),
      ],
    );
  }
}