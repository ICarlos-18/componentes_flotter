import 'package:flutter/material.dart';


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
        ],
      ),
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)),
          child: const Image(
            image: AssetImage('assets/imgs/Interestellar.jpg'),
            ),
    );
  }
}