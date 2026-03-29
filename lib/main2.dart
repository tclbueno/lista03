import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: const PaginaHibrida(),
    );
  }
}

class PaginaHibrida extends StatelessWidget {
  const PaginaHibrida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Widget Azul\n(Global)',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.yellow),
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text(
                  'Widget Amarelo\n(Sobrescrito)',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
