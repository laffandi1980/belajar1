import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const sib3a(),
        "/second": (context) => const SecondScreen(),
      },
    ),
  );
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

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
            Navigator.pushNamed(context, "/second");
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
        title: const Text('Second Screen asli'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(child: Text('Welcome to the Second Screen!')),
    );
  }
}
