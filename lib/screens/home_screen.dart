import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/infinite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter',
          style: TextStyle(color: Color.fromARGB(255, 236, 237, 238),
            fontWeight: FontWeight.bold),),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right),),
            title: Text('Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Diferentes widgets para entradas flutter',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.add_moderator,
            color: AppTheme.mainColor,
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
            ),
            const Divider(),
             ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list_alt_rounded),),
            title: Text('ListView.builder',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Scroll infinito',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.add_reaction_sharp,
            color: AppTheme.mainColor,
            ),
              onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfiniteListScreenState();
              });
              Navigator.push(context, ruta2);
            },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),),
            title: Text('Notificaciones',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Creación de notificaciones',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.zoom_out_map,
            color: AppTheme.mainColor
            ),
              onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
        ],
      ),
    );
  }
}