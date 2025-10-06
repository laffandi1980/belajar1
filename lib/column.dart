import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Example',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const sib3a(),
    );
  }
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Stateless Widget Example'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(items: items),
              ),
            );
          },
          child: const Text('Press Me'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> items;

  const SecondScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(items[index]));
        },
      ),
    );
  }
}
