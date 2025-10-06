import 'package:flutter/material.dart';

void main() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const Text('Stateless Widget Example'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(width: 200, height: 200, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // This button does nothing as StatelessWidget cannot change state
              },
              child: const Text('Change Color'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
