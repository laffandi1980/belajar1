import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  // Definisi router
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Sib3a()),
      GoRoute(
        path: '/second',
        builder: (context, state) => const SecondScreen(),
      ),
    ],
  );

  // Jalankan aplikasi dengan router
  runApp(
    MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: router),
  );
}

class Sib3a extends StatelessWidget {
  const Sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Stateless Widget Example'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman kedua
            context.go('/second');
          },
          child: const Text('Press Me'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen Asli'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          'Welcome to the Second Screen!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
