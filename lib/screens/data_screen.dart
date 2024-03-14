import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/infinite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final List selectedData;

  const DataScreen({Key? key, required this.selectedData}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int selectedIndex = 0;

  void openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
              builder: (context) => const InfiniteListScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(builder: (context) => const ImageScreen());
          break;
      }

      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Screen',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Datos Guardados:',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            const Divider(),
            
            Expanded(
              child: ListView.builder(
                itemCount: widget.selectedData.length,
                itemBuilder: (BuildContext context, int index) {
                  final data = widget.selectedData[index];
                  return ListTile(
                    title: Text(
                      data['pregunta'],
                      style: AppTheme.lightTheme.textTheme.bodyMedium,
                    ),
                    subtitle: Text(
                      data['respuesta'].toString(),
                      style: AppTheme.lightTheme.textTheme.bodySmall,
                    ),
                  );
                },
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
            label: "",
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
              Icons.arrow_circle_right_outlined,
              color: AppTheme.accentcolor,
            ),
            label: "Entradas",
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
}