import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/tasks_provider.dart';
import 'screens/tasks_screen.dart'; 

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => TasksProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tareas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TasksScreen(), 
      
    );
  }
}
