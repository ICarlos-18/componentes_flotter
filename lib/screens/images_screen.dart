import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => images_screen();
}


// ignore: camel_case_types
class images_screen extends State<ImageScreen> {
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
        title: const Text(
          'Imágenes',
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
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
  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)),
        margin: const EdgeInsets.all(20),
        elevation: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/imgs/Interestellar.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text('Interestellar',
                  style: AppTheme.lightTheme.textTheme.bodySmall),
                ),
              ],
            ),
          ),
    );
  }

  Stack imageWeb() {
    return Stack(
      children: <Widget>[
        const Center(
            child: CircularProgressIndicator(),
          ),
          Center(
            child: SizedBox(
              height: 550,
              width: 550,
              child: 
              FadeInImage.memoryNetwork
              (placeholder: kTransparentImage, 
              image: 'https://as2.ftcdn.net/v2/jpg/05/71/39/37/1000_F_571393752_sUcuM6H10GDhuZz7BcCakUi6TVCA43VZ.jpg'),
            ),
            // Para mostrar una imagen de la web
            // Image.network(
            //  ,
            // ),
          ),
        ],
    );
  }