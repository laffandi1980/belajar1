import 'package:flutter/material.dart';

void main() {
  runApp(sib3a());
}

class sib3a extends StatelessWidget {
  bool _isBlue = true;

  void _ubahWarna() {
    _isBlue = !_isBlue;
    // This function is intentionally left empty as StatelessWidget cannot change state
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue[50] : Colors.red[50],
        appBar: AppBar(
          title: const Text('Stateless Widget Example'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(width: 200, height: 200, color: Colors.blue),
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
