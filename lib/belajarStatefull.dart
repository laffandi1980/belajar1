import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatefulWidget {
  const sib3a({super.key});

  @override
  State<sib3a> createState() => _gantiwarna();
}

class _gantiwarna extends State<sib3a> {
  bool _isBlue = true;
  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue[50] : Colors.red[50],
        appBar: AppBar(
          title: const Text('Stateful Widget Example'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: _isBlue ? Colors.blue : Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _ubahWarna,
          child: const Icon(Icons.color_lens),
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
