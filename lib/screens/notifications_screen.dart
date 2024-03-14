import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => notifications_screen();
}


// ignore: camel_case_types
class notifications_screen extends State<NotificationsScreen> {
  int selectedIndex = 0;
  int selectedRadioOption = 0; //Para los RadioButton
  
  openScreen(int index){
    setState(() {
      MaterialPageRoute ruta = 
            MaterialPageRoute(builder: (context) => const HomeScreen());
    switch(index){
      case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
      case 1: ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
      case 2: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
          break;
      case 3: ruta = MaterialPageRoute(builder: (context) => const ImageScreen());
          break;
  }
  selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(
        context, ruta
        );
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificación')
        ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 50, 160, 215),
        unselectedItemColor: const Color.fromARGB(247, 22, 193, 170),
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.mainColor,
            icon: Icon(Icons.home_outlined,
            color: Color.fromARGB(251, 234, 241, 243),
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input,
            color: AppTheme.accentcolor,
            ),
            label: "Entradas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active,
            color: AppTheme.accentcolor,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image,
            color: AppTheme.accentcolor,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,
            color: AppTheme.accentcolor,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }
}