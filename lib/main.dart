
import 'package:components_trial/new_button_component/buttons/button_showcase.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buttons Showcase'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const AyinzaButtonTestScreen(),
      ),
    );
  }
}
