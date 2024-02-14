import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter'),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.light_mode_sharp),
            title: Text('Holaa', 
            style: TextStyle(color: Color.fromARGB(255, 118, 5, 46),
            fontWeight: FontWeight.bold),),
            subtitle: Text('Eres Humano?',
            style: TextStyle(color: Color.fromARGB(255, 10, 51, 73),
            fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.add_moderator),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.air_sharp),
            title: Text('Holaa',
            style: TextStyle(color: Color.fromARGB(255, 243, 243, 76),
            fontWeight: FontWeight.bold),),
            subtitle: Text('Quieres Casasrte conmigo?',
            style: TextStyle(color: Color.fromARGB(255, 230, 20, 20),
            fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.add_reaction_sharp),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.alarm),
            title: Text('Holaa'),
            subtitle: Text('Quieres ser mi Novia?'),
            trailing: Icon(Icons.zoom_out_map),
          ),
        ],
      ),
    );
  }
}