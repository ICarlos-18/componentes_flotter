import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3_5c/screens/data_screen.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/infinite_list_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedRdioOption = 0;
    int selectedIndex = 0;

  


  List<dynamic> selectedData = [];

  void openScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InfiniteListScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotificationsScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ImageScreen()),
        );
        break;
      case 4:
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }
  }

  void goToDataScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DataScreen(selectedData: selectedData)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaCheck(),
            ElevatedButton(
              onPressed: goToDataScreen,
              child: const Text(
                'Guardar',
              ),
            ),
          ],
        ),
      ),
            bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.backColor,
        unselectedItemColor: AppTheme.accentcolor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppTheme.accentcolor,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: AppTheme.accentcolor,
            ),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: AppTheme.accentcolor,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: AppTheme.accentcolor,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: AppTheme.accentcolor,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodySmall,
      ),
    );
  }

  



  TextField entradaTexto() {
  return TextField(
    style: AppTheme.lightTheme.textTheme.headlineMedium,
    decoration: InputDecoration(
      border: const UnderlineInputBorder(),
      labelText: 'Nombre',
      labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
    ),
    onChanged: (text) {
      setState(() {
        selectedData.removeWhere((data) => data['pregunta'] == 'Nombre');
        selectedData.add({'pregunta': 'Nombre', 'respuesta': text});
      });
    },
  );
}


  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              selectedData.add({'pregunta': 'Te gusta Flutter', 'respuesta': value});
              print('Estado Switch: $valueSwitch');
            });
          },
        )
      ],
    );
  }

Column entradaSlider() {
  return Column(
    children: [
      Text('¿Cuánto te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge),
      Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.accentcolor,
          thumbColor: AppTheme.mainColor,
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged: (value) {
            setState(() {
              valueSlider = value;
              // selectedData.removeWhere((data) => data['pregunta'] == 'Cuánto te gusta Flutter');
              selectedData.add({'pregunta': 'Cuánto te gusta Flutter', 'respuesta': value});
              print('Valor Slider: $valueSlider');
            }
            
            
            );
          }

          
          )
    ],
  );
}


  Column entradasRadio() {
    return Column(
      children: [
        Text(
          "¿Qué prefieres usar para desarrollo móvil?",
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1,
            child: Radio(
                value: 1,
                groupValue: selectedRdioOption,
                onChanged: (value) {
                  setState(() {
                    selectedRdioOption = value!;
                    selectedData.add({'pregunta': 'Desarrollo móvil', 'respuesta': 'Kotlin'});

                  });
                }),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1,
            child: Radio(
                value: 2,
                groupValue: selectedRdioOption,
                onChanged: (value) {
                  setState(() {
                    selectedRdioOption = value!;
                    selectedData.add({'pregunta': 'Desarrollo móvil', 'respuesta': 'Flutter'});
                    print('Opción seleccionada: $selectedRdioOption');
                  });
                }),
          ),
        ),
      ],
    );
  }

  Row entradaCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked1,
            onChanged: (value) {
              setState(() {
                isChecked1 = value!;
                selectedData.add({'pregunta': '¿Navegador?', 'respuesta': value});
                print('Valor de navegador: $isChecked1');
              });
            }),



        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(() {
                isChecked2 = value!;
                selectedData.add({'pregunta': '¿Emulador?', 'respuesta': value});
                print('Valor de emulador: $isChecked2');
              });
            }),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked3,
            onChanged: (value) {
              setState(() {
                isChecked3 = value!;
                selectedData.add({'pregunta': '¿Smartphone?', 'respuesta': value});
                print('Valor de smartphone: $isChecked3');
              });
            }),
      ],
    );
  }
}