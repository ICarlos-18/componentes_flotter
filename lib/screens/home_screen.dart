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
              leading: const Icon(Icons.input_rounded),
            title: Text('Entradas',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Diferentes widgets para entradas flutter'),
            trailing: const Icon(Icons.add_moderator),
            ),
            const Divider(),
             ListTile(
              leading: const Icon(Icons.list_alt_rounded),
            title: Text('ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Scroll infinito'),
            trailing: const Icon(Icons.add_reaction_sharp),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notification_add),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Creación de notificaciones'),
            trailing: const Icon(Icons.zoom_out_map),
          ),
        ],
      ),
    );
  }
}