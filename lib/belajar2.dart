import 'package:flutter/material.dart';

void main() {
  runApp(const MySIB3A());
}

class MySIB3A extends StatefulWidget {
  const MySIB3A({super.key});

  @override
  State<MySIB3A> createState() => _MySIB3AState();
}

class _MySIB3AState extends State<MySIB3A> {
  String text = "Hello, SIB3A!";
  void _merubahtext() {
    setState(() {
      text = "ini sudah di klik";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const Text('Stateful Widget Example'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.purple),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _merubahtext,
          child: const Icon(Icons.add),
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
