import 'package:flutter/material.dart';
import 'home_page.dart'; // Importation de la nouvelle page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Utilisation de la nouvelle page
    );
  }
}
