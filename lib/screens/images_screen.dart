import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
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
    );
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

  Widget imageWeb(){
    return Center(
      child: Image.network(
        'https://as2.ftcdn.net/v2/jpg/05/71/39/37/1000_F_571393752_sUcuM6H10GDhuZz7BcCakUi6TVCA43VZ.jpg'),
    );
  }
}