import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAppBase());
}

class MeuAppBase extends StatelessWidget {
  const MeuAppBase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercícios Flutter',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.blue,
      ),

      home: const PaginaExercicio(),
    );
  }
}

class PaginaExercicio extends StatelessWidget {
  const PaginaExercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolução do Exercício'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Blackground blue', style: TextStyle(fontSize: 18))],
        ),
      ),
    );
  }
}
