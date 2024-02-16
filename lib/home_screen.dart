import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter',
          style: TextStyle(color: Color.fromARGB(255, 215, 232, 247),
            fontWeight: FontWeight.bold),),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.light_mode_sharp),
            title: Text('Holaa',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Eres Humano?'),
            trailing: const Icon(Icons.add_moderator),
            ),
            const Divider(),
             ListTile(
              leading: const Icon(Icons.air_sharp),
            title: Text('Holaa',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Quieres Casasrte conmigo?'),
            trailing: const Icon(Icons.add_reaction_sharp),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.alarm),
            title: Text('Holaa',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Quieres ser mi Novia?'),
            trailing: const Icon(Icons.zoom_out_map),
          ),
        ],
      ),
    );
  }
}