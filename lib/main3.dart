import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício de Login',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  void _autenticar() {
    String usuario = _usuarioController.text;
    String senha = _senhaController.text;

    if (usuario == "admin" && senha == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      // Exibição da SnackBar em caso de erro
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login ou senha incorretos!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 100),
            const SizedBox(height: 30),

            TextField(
              controller: _usuarioController,
              decoration: const InputDecoration(
                labelText: 'Email/Usuário',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: _senhaController,
              obscureText: true, // Oculta o texto digitado
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _autenticar,
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter By Example')),
      body: const Center(child: FlutterLogo(size: 200)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context), // Volta para a tela de login
        child: const Icon(Icons.star),
      ),
    );
  }
}
